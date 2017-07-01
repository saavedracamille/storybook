package controller.storyGenerationIntro;

import java.util.ArrayList;
import java.util.Calendar;

import models.EducationalBackground;
import models.Work;
import objects.Birth;
import objects.FamilyRole;
import objects.Gender;
import objects.LivingIn;
import objects.Occupation;
import objects.Relationships;
import simplenlg.features.Feature;
import simplenlg.features.Form;
import simplenlg.features.Tense;
import simplenlg.framework.CoordinatedPhraseElement;
import simplenlg.framework.DocumentElement;
import simplenlg.framework.NLGFactory;
import simplenlg.lexicon.Lexicon;
import simplenlg.phrasespec.NPPhraseSpec;
import simplenlg.phrasespec.PPPhraseSpec;
import simplenlg.phrasespec.SPhraseSpec;
import simplenlg.realiser.english.Realiser;

public class GenerateIntro2 {
	private Lexicon lexicon;
	private NLGFactory nlgFactory;
	private Realiser realiser;
	private String pronoun;

	public GenerateIntro2() {
		lexicon = Lexicon.getDefaultLexicon();
		nlgFactory = new NLGFactory(lexicon);
		realiser = new Realiser(lexicon);
	}
	
	public String generateIntroduction(IntroObjectInit objects) {
		pronoun = objects.getGender().getPronoun();
		
		ArrayList<DocumentElement> list = new ArrayList<DocumentElement>();
		
		list.add(birthPhrase(objects.getBirth(), objects.getPersonName()));
		//TODO: list.add(genderPhrase(objects.getGender()));
		list.add(locationPhrase(objects.getLivingIn()));
		//TODO: list.add(occupationPhrase(objects.getOccupation()));
		list.add(educationPhrase(objects.getEducationalBackground()));
		list.add(fatherPhrase(objects.getRelationships()));
		list.add(motherPhrase(objects.getRelationships()));
		list.add(brotherPhrase(objects.getRelationships()));
		list.add(sisterPhrase(objects.getRelationships()));
		list.add(workPhrase(objects.getWorks()));
				
		DocumentElement par = nlgFactory.createParagraph(list);
	    
		return realiser.realise(par).getRealisation();
	}
	
	public DocumentElement birthPhrase(Birth birth, String name) {
		String birthday = birth.getBirthday();
		
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		s.setSubject(name);
		s.setVerb("is");
		s.addPostModifier("born");
		
		PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
		p1.setPreposition("on");
		p1.addComplement(birthday);
		s.addModifier(p1); 
		
		return nlgFactory.createSentence(s);
	}
	
	public DocumentElement genderPhrase(Gender gender) {
		NPPhraseSpec s = nlgFactory.createNounPhrase(gender.getGender());
		s.setDeterminer("a");
		
		return nlgFactory.createSentence(s);
	}
	
	public DocumentElement locationPhrase(LivingIn livingIn) {
		if (livingIn.getLocation() != null || !("").equals(livingIn.getLocation())) {
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject(pronoun);
			s.setVerb("live");
			s.setFeature(Feature.FORM, Form.GERUND);
			
			PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
			p1.setPreposition("in");
			p1.addComplement(livingIn.getLocation());
			s.addModifier(p1); 
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	//TODO: connect with education
	public DocumentElement occupationPhrase(Occupation occupation) {
		if (occupation.getOccupation() != null || !("").equals(occupation.getOccupation())) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(occupation.getOccupation());
			s1.setDeterminer("a");
			
			SPhraseSpec s2 = new SPhraseSpec(nlgFactory);
			s2.setVerb("is");
			s2.setObject(s1);
			
			return nlgFactory.createSentence(s2);
		} else {
			return null;
		}
	}
	
	public DocumentElement familyRolePhrase(FamilyRole familyRole) {
		if (familyRole.getRole() != null || !("").equals(familyRole.getRole())) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(familyRole.getRole());
			s1.setDeterminer("the");
			
			SPhraseSpec s2 = new SPhraseSpec(nlgFactory);
			s2.setSubject(pronoun);
			s2.setVerb("is");
			s2.setObject(s1);
			
			PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
			p1.setPreposition("of");
			s2.addModifier(p1);
			
			return nlgFactory.createSentence(s2);
		} else {
			return null;
		}
	}
	
	public DocumentElement educationPhrase(ArrayList<EducationalBackground> educationalBackground) {
		if (educationalBackground.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s;
			
			for (int i = 0; i < educationalBackground.size(); i++) {
				s = new SPhraseSpec(nlgFactory);
				String course = educationalBackground.get(i).getCourse();
				String institution = educationalBackground.get(i).getInstitution();
				String yrGraduated = Integer.toString(educationalBackground.get(i).getYear_graduated());
				
				s.setVerb("study");
				
				if (!("").equals(course) && course != null)
					s.setObject(course);
				
				if (!("").equals(institution) && institution != null) {
					PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
					p1.addComplement(institution);
					p1.setPreposition("at");
					s.addModifier(p1);
				}
				
				if (!("").equals(yrGraduated) && yrGraduated != null && !yrGraduated.equals("0")) {
					PPPhraseSpec p2 = new PPPhraseSpec(nlgFactory);
					p2.addComplement(yrGraduated);
					p2.setPreposition("last");
					s.addModifier(p2);
				}
				
				int yearNow = Calendar.getInstance().get(Calendar.YEAR);
				
				if ((("").equals(yrGraduated) || yrGraduated == null || yrGraduated.equals("0") || yrGraduated.isEmpty() || Integer.parseInt(yrGraduated) > yearNow) && (i == educationalBackground.size()-1))
					s.setFeature(Feature.FORM, Form.GERUND);
				else
					s.setFeature(Feature.TENSE, Tense.PAST);	
				
				c.addCoordinate(s);
			}
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s1);
		} else {
			return null;
		}
	}
	
	public DocumentElement workPhrase(ArrayList<Work> works) {
		if (works.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s;
			
			for (int i = 0; i < works.size(); i++) {
				s = new SPhraseSpec(nlgFactory);
				String dateStarted = works.get(i).getDateStarted();
				String dateEnded = works.get(i).getDateEnded();
				String institution = works.get(i).getInstitution();
				String location = works.get(i).getLocation();
				
				s.setVerb("work");
				
				if (!("").equals(institution) && institution != null) {
					PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
					p1.addComplement(institution);
					p1.setPreposition("at");
					s.addModifier(p1);
				}
				
				if (!("").equals(dateStarted) && dateStarted != null) {
					PPPhraseSpec p2 = new PPPhraseSpec(nlgFactory);
					p2.addComplement(dateStarted);
					p2.setPreposition("during");
					s.addModifier(p2);
				}
				
				if (!("").equals(dateEnded) && dateEnded != null) {
					PPPhraseSpec p3 = new PPPhraseSpec(nlgFactory);
					p3.addComplement(dateEnded);
					p3.setPreposition("to");
					s.addModifier(p3);
				}
				
				if (!("").equals(location) && location != null) {
					PPPhraseSpec p4 = new PPPhraseSpec(nlgFactory);
					p4.addComplement(location);
					p4.setPreposition("at");
					s.addModifier(p4);
				}
				
				if (("").equals(dateEnded) || dateEnded == null)
					s.setFeature(Feature.FORM, Form.GERUND);
				else
					s.setFeature(Feature.TENSE, Tense.PAST);	
				
				c.addCoordinate(s);
			}
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s1);
		} else {
			return null;
		}
	}
	
	public DocumentElement fatherPhrase(Relationships relationship) {
		ArrayList<String> names = relationship.getNames("father");
		
		if (names != null) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("brother");
			s.setVerb("is");
			
			for (int i = 0; i < names.size(); i++) {
				String name = names.get(i);	
				c.addCoordinate(name);
			}
			
			s.setObject(c);
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	public DocumentElement motherPhrase(Relationships relationship) {
		ArrayList<String> names = relationship.getNames("mother");
		
		if (names != null) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("brother");
			s.setVerb("is");
			
			for (int i = 0; i < names.size(); i++) {
				String name = names.get(i);	
				c.addCoordinate(name);
			}
			
			s.setObject(c);
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	public DocumentElement brotherPhrase(Relationships relationship) {
		ArrayList<String> names = relationship.getNames("brother");
		
		if (names != null) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("brother");
			s.setVerb("is");
			
			for (int i = 0; i < names.size(); i++) {
				String name = names.get(i);	
				c.addCoordinate(name);
			}
			
			s.setObject(c);
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	public DocumentElement sisterPhrase(Relationships relationship) {
		ArrayList<String> names = relationship.getNames("sister");
		
		if (names != null) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("brother");
			s.setVerb("is");
			
			for (int i = 0; i < names.size(); i++) {
				String name = names.get(i);	
				c.addCoordinate(name);
			}
			
			s.setObject(c);
			
			s1.addPostModifier(c);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
}
