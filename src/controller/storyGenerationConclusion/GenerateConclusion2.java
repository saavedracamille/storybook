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
import simplenlg.framework.NLGElement;
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

	public GenerateConclusion2() {
		lexicon = Lexicon.getDefaultLexicon();
		nlgFactory = new NLGFactory(lexicon);
		realiser = new Realiser(lexicon);
	}
	
	public String generateConclusion(ConclusionController objects){
		ArrayList<DocumentElement> list = new ArrayList<DocumentElement>();
		
		list.add(LikesPhrase(objects.getLikes()));
		list.add(EventGoingPhrase(objects.getGoingEvents()));
		list.add(EventInterested(objects.getInterestedEvents()));
		
		DocumentElement par = nlgFactory.createParagraph(list); 
		String output = realiser.realise(par).getRealisation();
		System.out.println(output);
		return output;
	}
	//TODO: split musician bands 
	public DocumentElement LikesPhrase(ArrayList<Likes> likes) {
		if (likes.size() != 0) {
			//he likes
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("he");  //TODO: subj
			s.setVerb("likes"); //TODO: likes or has attended 
			
			CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
			//loop per category
			for (int i = 0; i < likes.size(); i++) {
				NPPhraseSpec category = nlgFactory.createNounPhrase(likes.get(i).getType()); 	
				category.setPlural(true);
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
	
			String output = realiser.realiseSentence(s);
			System.out.println(output);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	public DocumentElement EventGoingPhrase(ArrayList<Event> goingEvents) {
		if (goingEvents.size() != 0) {
			//he likes
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("he");  //TODO: subj
			s.setVerb("attended"); //TODO: likes or has attended 
			s.setFeature(Feature.TENSE, Tense.PAST);
			CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
			
			NPPhraseSpec category = nlgFactory.createNounPhrase("events"); 
			category.setPlural(true);
			CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < goingEvents.size(); i++) {
				NPPhraseSpec object1 = nlgFactory.createNounPhrase(goingEvents.get(i).getName());
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
	
			String output = realiser.realiseSentence(s);
			System.out.println(output);
			
			return nlgFactory.createSentence(s);
		} else {
			return null;
		}
	}
	
	public DocumentElement EventInterested(ArrayList<Event> interestedEvents) {
		if (interestedEvents.size() != 0) {
			//he is interested
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setSubject("he");  //TODO: subj
			s.setVerb("is interested"); //TODO: likes, has attended or is interested
	
			//ALL BELOW ARE FOR INTERESTED EVENTS
			//TODO: gerund phrase: in going/attending/participating -> change verb according to what u like nalang
			SPhraseSpec s1 = new SPhraseSpec(nlgFactory);
			s1.setVerb("go");
			s1.setFeature(Feature.FORM, Form.GERUND);
	
			PPPhraseSpec p1 = new PPPhraseSpec(nlgFactory);
			p1.addComplement(s1);
			p1.setPreposition("in");
			s.addModifier(p1); 
	
			//TODO: infinitive phrase: to events/activities -> change noune accordingly
			PPPhraseSpec p2 = new PPPhraseSpec(nlgFactory);
			p2.addComplement("events");
			p2.setPreposition("to");
			s1.addModifier(p2); 
	
			//TODO: list grammar rule set -> such as A, B and C
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
						
			String output = realiser.realiseSentence(s);
			System.out.println(output);
			
			return nlgFactory.createSentence(s);
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
