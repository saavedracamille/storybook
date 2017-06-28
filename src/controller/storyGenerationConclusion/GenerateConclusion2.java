package controller.storyGenerationConclusion;

import java.util.ArrayList;

import objects.EventGoing;
import objects.EventInterested;
import objects.Likes;
import simplenlg.features.Feature;
import simplenlg.features.Form;
import simplenlg.framework.CoordinatedPhraseElement;
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
	
	public NLGElement LikesPhrase(Likes likes) {
		//he likes
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		s.setSubject("he");  //TODO: subj
		s.setVerb("liked"); //TODO: likes or has attended 

		CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
		//loop per category
		for (int i = 0; i < likes.getLikes().size(); i++) {
			NPPhraseSpec category = nlgFactory.createNounPhrase("comm"); 	
						
			CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
			for (int j = 0; j < 3; j++) {
				NPPhraseSpec object1 = nlgFactory.createNounPhrase(j + "a");	
				obj.addCoordinate(object1); 
			}
			
			obj.addPreModifier("such as"); 
			category.addComplement(obj);			
			categories.addCoordinate(category);
		}
		
		s.setObject(categories);		

		String output = realiser.realiseSentence(s);
		System.out.println(output);
		
		return s;
	}
	
	public NLGElement EventGoingPhrase(ArrayList<EventGoing> goingEvents) {
		//he likes
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		s.setSubject("he");  //TODO: subj
		s.setVerb("liked"); //TODO: likes or has attended 

		CoordinatedPhraseElement categories = nlgFactory.createCoordinatedPhrase();
		
		for (int j = 0; j < goingEvents.size(); j++) {
			NPPhraseSpec category = nlgFactory.createNounPhrase("comm"); 				
			CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < 3; i++) {
				NPPhraseSpec object1 = nlgFactory.createNounPhrase(i + "a");	
				//TODO: if there is location
				PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
				pp.addComplement("location");
				pp.setPreposition("in");
				object1.addComplement(pp);
				obj.addCoordinate(object1); 
			}
			
			obj.addPreModifier("such as"); 
			category.addComplement(obj);			
			categories.addCoordinate(category);
		}
		
		s.setObject(categories);		

		String output = realiser.realiseSentence(s);
		System.out.println(output);
		
		return s;
	}
	
	public NLGElement EventInterested(ArrayList<EventInterested> interestedEvents) {
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
		for (int i = 0; i < 3; i++) {
			NPPhraseSpec object1 = nlgFactory.createNounPhrase(i);	//TODO: replace this with the names
			//TODO: if there is location
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.addComplement("location");
			pp.setPreposition("in");
			object1.addComplement(pp);
			
			obj.addCoordinate(object1); 
		}

		p2.addPostModifier(obj);
		obj.addPreModifier("such as"); //change to examples, such as, like etc if you want to
					
		String output = realiser.realiseSentence(s);
		System.out.println(output);
		
		return s;
	}
}
