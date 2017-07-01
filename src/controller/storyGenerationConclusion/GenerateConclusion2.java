package controller.storyGenerationConclusion;

import java.util.ArrayList;

import models.CheckIn;
import models.Event;
import models.Likes;
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

public class GenerateConclusion2 {
	private Lexicon lexicon;
	private NLGFactory nlgFactory;
	private Realiser realiser;
	private String pronoun;

	public GenerateConclusion2() {
		lexicon = Lexicon.getDefaultLexicon();
		nlgFactory = new NLGFactory(lexicon);
		realiser = new Realiser(lexicon);
	}
	
	public String generateConclusion(ConclusionController objects) {
		pronoun = objects.getGender().getPronoun();
		
		ArrayList<DocumentElement> list = new ArrayList<DocumentElement>();
		
		list.add(LikesPhrase(objects.getLikes()));
		list.add(EventGoingPhrase(objects.getGoingEvents()));
		list.add(EventInterested(objects.getInterestedEvents()));
		
		DocumentElement par = nlgFactory.createParagraph(list);
		
		return realiser.realise(par).getRealisation();
	}
	
	public DocumentElement LikesPhrase(ArrayList<Likes> likes) {
		if (likes.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("likes");
			
			CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < likes.size(); i++) {
				NPPhraseSpec category;
				
				String cat = likes.get(i).getType();
				String[] likesWords = new String[2];
				boolean toConnect = false;
				
				if (likes.get(i).getInterest().size() > 1) {
					if (cat.contains("/")) {
						likesWords = cat.split("\\/");
						category = nlgFactory.createNounPhrase(likesWords[0]);
					} else if (cat.contains(" ")) {
						likesWords = cat.split(" ");
						category = nlgFactory.createNounPhrase(likesWords[1]);
						
						toConnect = true;
					} else
						category = nlgFactory.createNounPhrase(cat);
					
					category.setPlural(true);
					
					if (toConnect)
						category.addPreModifier(likesWords[0]);
				} else
					category = nlgFactory.createNounPhrase(cat);
				
				CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
				for (int j = 0; j < likes.get(i).getInterest().size(); j++) {
					NPPhraseSpec object1 = nlgFactory.createNounPhrase(likes.get(i).getInterest().get(j).getInterest());	
					obj.addCoordinate(object1); 
				}
				
				obj.addPreModifier("such as"); 
				category.addComplement(obj);			
				categories.addCoordinate(category);
			}
			
			s.setObject(categories);
			
			s1.addPostModifier(s);
			
			return nlgFactory.createSentence(s1);
		} else
			return null;
	}
	
	public DocumentElement EventGoingPhrase(ArrayList<Event> goingEvents) {
		if (goingEvents.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("attended");
			s.setFeature(Feature.TENSE, Tense.PAST);
			CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
			
			NPPhraseSpec category = nlgFactory.createNounPhrase("events"); 
			category.setPlural(true);
			CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < goingEvents.size(); i++) {
				NPPhraseSpec object1 = nlgFactory.createNounPhrase(goingEvents.get(i).getName());
				if (goingEvents.size() > 1)
					object1.setPlural(true);
				
				String location = generateLocation(goingEvents.get(i).getLocation());
				if (!("").equals(location)) {
					PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
					pp.addComplement(location);
					pp.setPreposition("in");
					object1.addComplement(pp);
				}
				
				obj.addCoordinate(object1); 
			}
			
			obj.addPreModifier("such as"); 
			category.addComplement(obj);			
			categories.addCoordinate(category);
			
			s.setObject(categories);
			
			s1.addPostModifier(s);
			
			return nlgFactory.createSentence(s1);
		} else {
			return null;
		}
	}
	
	public DocumentElement EventInterested(ArrayList<Event> interestedEvents) {
		if (interestedEvents.size() != 0) {
			NPPhraseSpec s11 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("is interested");
	
			SPhraseSpec s1 = new SPhraseSpec(nlgFactory);
			s1.setVerb("go");
			s1.setFeature(Feature.FORM, Form.GERUND);
	
			PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
			p1.addComplement(s1);
			p1.setPreposition("in");
			s.addModifier(p1); 
	
			PPPhraseSpec p2 = new PPPhraseSpec(nlgFactory);
			p2.addComplement("events");
			p2.setPreposition("to");
			s1.addModifier(p2); 
	
			CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
			for (int i = 0; i < interestedEvents.size(); i++) {
				NPPhraseSpec object1 = nlgFactory.createNounPhrase(interestedEvents.get(i).getName());
				String location = generateLocation(interestedEvents.get(i).getLocation());
	
				if (!("").equals(location)) {
					PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
					pp.addComplement(location);
					pp.setPreposition("in");
					object1.addComplement(pp);
				}
				
				obj.addCoordinate(object1); 
			}
	
			p2.addPostModifier(obj);
			obj.addPreModifier("such as"); //change to examples, such as, like etc if you want to
			
			s11.addPostModifier(s);
			
			return nlgFactory.createSentence(s11);
		} else {
			return null;
		}
	}
	
	public String generateLocation(CheckIn checkIn) {
		boolean toggle = false;
		String location = "";

		if (checkIn != null) {
			if (checkIn.getPlace() != null) {
				location += checkIn.getPlace();
				toggle = true;
			}
			
			if (checkIn.getCity() != null) {
				if (toggle == true)
					location += " in ";
				location += checkIn.getCity();
			}
			
			if (checkIn.getCountry() != null)
				if(toggle == true && checkIn.getCountry().equals(checkIn.getCity()))
					location += ", " + checkIn.getCity();
		}
		
		return location;
	}
}
