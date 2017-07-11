package controller.storyGenerationBody;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

import models.CheckIn;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.PostTypeDAO;
import modelsDAO.ToBeProcessedDAO;
import objects.Celebrate;
import objects.Restaurants;
import objects.TravelIntl;
import objects.TravelLocal;
import simplenlg.features.Feature;
import simplenlg.features.Tense;
import simplenlg.framework.CoordinatedPhraseElement;
import simplenlg.framework.DocumentElement;
import simplenlg.framework.NLGFactory;
import simplenlg.lexicon.Lexicon;
import simplenlg.phrasespec.NPPhraseSpec;
import simplenlg.phrasespec.PPPhraseSpec;
import simplenlg.phrasespec.SPhraseSpec;
import simplenlg.realiser.english.Realiser;

public class GenerateBody2 {
	private Lexicon lexicon;
	private NLGFactory nlgFactory;
	private Realiser realiser;
	private String pronoun;

	public GenerateBody2() {
		lexicon = Lexicon.getDefaultLexicon();
		nlgFactory = new NLGFactory(lexicon);
		realiser = new Realiser(lexicon);
	}
	
	public String generateBody(BodyController objects) {
		pronoun = objects.getGender().getPronoun();
		
		ArrayList<DocumentElement> list = new ArrayList<DocumentElement>();
		HashMap<Integer, ArrayList<VerbObject>> vos = objects.getEvents();
		
		Iterator<HashMap.Entry<Integer, ArrayList<VerbObject>>> parent = vos.entrySet().iterator();
		while (parent.hasNext()) {
			HashMap.Entry<Integer, ArrayList<VerbObject>> parentPair = parent.next();
			if (parentPair.getKey() == 2) {
				list.add(summaryCelebrates(objects.getCelebrates()));
				list.add(generateCelebratingPosts(arrangeByDate(parentPair.getValue())));
			} else if (parentPair.getKey() == 5) {
				list.add(summaryRestaurant(objects.getRestaurants()));
				list.add(generateEatingPosts(arrangeByDate(parentPair.getValue())));
			} else if (parentPair.getKey() == 7) {
				list.add(generalSentences(parentPair.getKey(), arrangeByDate(parentPair.getValue())));
			} else if (parentPair.getKey() == 10) {
				list.add(generalSentences(parentPair.getKey(), arrangeByDate(parentPair.getValue())));
				list.add(summaryTravelLocal(objects.getTravelLocals()));
				list.add(summaryTravelIntl(objects.getTravelIntl()));
			}
		}
		
		DocumentElement par = nlgFactory.createParagraph(list);
		
		return realiser.realise(par).getRealisation();
	}
	
	public DocumentElement summaryCelebrates(Celebrate celebrate) {
		ArrayList<String> names = celebrate.getNames();
		
		if (names.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("celebrate");
			s.setFeature(Feature.TENSE, Tense.PAST);
			
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.setPreposition("the most with");
			
			CoordinatedPhraseElement celebrates = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < names.size(); i++) {
				celebrates.addCoordinate(names.get(i).replace("with ", ""));
			}
			
			pp.addComplement(celebrates);
			
			s.setObject(pp);
			
			s1.addPostModifier(s);
			
			System.out.println(realiser.realise(s1).getRealisation());
			
			return nlgFactory.createSentence(s1);
		} else
			return null;
	}
	
	public DocumentElement summaryTravelLocal(ArrayList<TravelLocal> travelLocals) {
		if (travelLocals.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("has been");
			s.setFeature(Feature.TENSE, Tense.PAST);
			
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.setPreposition("to");
			
			CoordinatedPhraseElement overall = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < travelLocals.size(); i++) {
				NPPhraseSpec city;
				
				CoordinatedPhraseElement places = nlgFactory.createCoordinatedPhrase();
				
				for (int j = 0; j < travelLocals.get(i).getPlaces().size(); j++) {
					places.addCoordinate(travelLocals.get(i).getPlaces().get(j));
				}
				
				PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
				pp2.setPreposition("in");
				pp2.addComplement(travelLocals.get(i).getCity());
				
				city = nlgFactory.createNounPhrase();
				city.addComplement(pp2);
				
				places.addPostModifier(city);
				
				overall.addCoordinate(places);
			}
			
			overall.addPreModifier(pp);
			
			s.setObject(overall);
			
			s1.addPostModifier(s);
			
			System.out.println(realiser.realise(s1).getRealisation());
			
			return nlgFactory.createSentence(s1);
		} else
			return null;
	}
	
	public DocumentElement summaryTravelIntl(TravelIntl travelIntl) {
		ArrayList<String> countries = travelIntl.getCountries();
		
		if (countries.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("has visited the foreign");
			s.setFeature(Feature.TENSE, Tense.PAST);
			
			NPPhraseSpec np = nlgFactory.createNounPhrase("country");
			
			if (countries.size() > 1) {
				np.setPlural(true);
			}
			
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.setPreposition("such as");
			pp.addPreModifier(np);
			
			CoordinatedPhraseElement intl = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < countries.size(); i++) {
				intl.addCoordinate(countries.get(i));
			}
			
			pp.addComplement(intl);
			
			s.setObject(pp);
			
			s1.addPostModifier(s);
			
			System.out.println(realiser.realise(s1).getRealisation());
			
			return nlgFactory.createSentence(s1);
		} else
			return null;
	}
	
	public DocumentElement summaryRestaurant(ArrayList<Restaurants> restaurants) {
		if (restaurants.size() != 0) {
			NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
			
			SPhraseSpec s = new SPhraseSpec(nlgFactory);
			s.setVerb("has eaten");
			s.setFeature(Feature.TENSE, Tense.PAST);
			
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.setPreposition("in");
			
			CoordinatedPhraseElement overall = nlgFactory.createCoordinatedPhrase();
			
			for (int i = 0; i < restaurants.size(); i++) {
				NPPhraseSpec city;
				
				CoordinatedPhraseElement places = nlgFactory.createCoordinatedPhrase();
				
				for (int j = 0; j < restaurants.get(i).getPlaces().size(); j++) {
					places.addCoordinate(restaurants.get(i).getPlaces().get(j));
				}
				
				PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
				pp2.setPreposition("in");
				pp2.addComplement(restaurants.get(i).getCity());
				
				city = nlgFactory.createNounPhrase();
				city.addComplement(pp2);
				
				places.addPostModifier(city);
				
				overall.addCoordinate(places);
			}
			
			overall.addPreModifier(pp);
			
			s.setObject(overall);
			
			s1.addPostModifier(s);
			
			System.out.println(realiser.realise(s1).getRealisation());
			
			return nlgFactory.createSentence(s1);
		} else
			return null;
	}
	
	public DocumentElement generalSentences(int category, ArrayList<VerbObject> verbObjects) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		ArrayList<DocumentElement> sentences = new ArrayList<DocumentElement> ();
		
		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {
//				System.out.println("SENTENCE: " + verbObjects.get(i).getSentence());
//				System.out.println("NOUN: " + verbObjects.get(i).getNoun());
//				System.out.println("VERB: " + verbObjects.get(i).getVerb());
				
				SPhraseSpec s = new SPhraseSpec(nlgFactory);
				s.setSubject(pronoun);
				s.setVerb(verbObjects.get(i).getVerb());
				s.setFeature(Feature.TENSE, Tense.PAST);
				s.setObject(verbObjects.get(i).getNoun());
				
				ToBeProcessed tbp = tbpd.getPost(verbObjects.get(i).getPi());
//				System.out.println("TAGGED: " + tbp.getTagged());
//				System.out.println("DATE: " + tbp.getMonth() + "/" + tbp.getDay() + "/" + tbp.getYear());
//				System.out.println("LOCATION: " + tbp.getCheckIn().getPlace() + " " + tbp.getCheckIn().getCity() + " " + tbp.getCheckIn().getCountry());
				
				PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
				pp.addComplement(tbp.getMonthWord(tbp.getMonth()) + " " + tbp.getDay() + ", " + tbp.getYear() + ",");
				pp.setPreposition("On");
				s.addFrontModifier(pp);
				
				sentences.add(nlgFactory.createSentence(s));
				
				System.out.println(realiser.realise(s).getRealisation() + "\n\n");
			}
			
			DocumentElement par = nlgFactory.createParagraph(sentences);
			
			System.out.println(realiser.realise(par).getRealisation());
			
			return nlgFactory.createParagraph(par);
		} else
			return null;
	}
	
	public DocumentElement generateEatingPosts(ArrayList<VerbObject> verbObjects) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		ArrayList<DocumentElement> sentences = new ArrayList<DocumentElement> ();
		
		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {				
				SPhraseSpec s = new SPhraseSpec(nlgFactory);
				s.setSubject(pronoun);
				s.setVerb("eat");
				s.setFeature(Feature.TENSE, Tense.PAST);
				
				String location = generateLocation(tbpd.getPost(verbObjects.get(i).getPi()).getCheckIn());
				
				PPPhraseSpec pp = null;
				if (!("").equals(location)) {
					pp = new PPPhraseSpec(nlgFactory);
					pp.addComplement(location);
					pp.setPreposition("in");
				}
				
				s.setObject(pp);
			}
		}
		
		DocumentElement par = nlgFactory.createParagraph(sentences);
		
		System.out.println(realiser.realise(par).getRealisation());
		
		return nlgFactory.createParagraph(par);
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
	
	public DocumentElement generateCelebratingPosts(ArrayList<VerbObject> verbObjects) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		ArrayList<DocumentElement> sentences = new ArrayList<DocumentElement> ();
		
		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {
				ArrayList<String> celebratingType = celebratingType(verbObjects.get(i).getSentence(), verbObjects.get(i).getNoun(), tbpd.getPost(verbObjects.get(i).getPi()).getTagged());
				
				if (celebratingType.get(0).equals("anniversary") || celebratingType.get(0).equals("friendversary"))
					sentences.add(anniversary(verbObjects.get(i), celebratingType.get(0)));
				else if (celebratingType.get(0).equals("new year") || celebratingType.get(0).equals("christmas"))
					sentences.add(anniversary(verbObjects.get(i), celebratingType.get(0)));
				else if (celebratingType.get(0).equals("welcome"))
					sentences.add(anniversary(verbObjects.get(i), celebratingType.get(0)));
				else if (celebratingType.get(0).equals("normal"))
					sentences.add(generalSentences(2, verbObjects));
				
//				SPhraseSpec s = new SPhraseSpec(nlgFactory);
//				s.setSubject(pronoun);
//				s.setVerb(verbCelebration(celebratingType.get(0)));
//				s.setFeature(Feature.TENSE, Tense.PAST);
//				
//				PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
//				
//				if (celebratingType.get(1) != null) {
//					s.setObject(celebratingType.get(1) + " " + celebratingType.get(0));
//				}
			}
		}
		
		DocumentElement par = nlgFactory.createParagraph(sentences);
		
		System.out.println(realiser.realise(par).getRealisation());
		
		return nlgFactory.createParagraph(par);
	}
	
	public DocumentElement anniversary(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		
		NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
		CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
		obj.addCoordinate(s1);
		NPPhraseSpec object1 = nlgFactory.createNounPhrase(verbObjects.getNoun());
		obj.addCoordinate(object1);
		
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);
		
		PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
		pp.setPreposition("their");
		pp.addComplement(type + " together");
		
		s.setObject(pp);
		
		System.out.println(realiser.realise(s).getRealisation());
		
		return nlgFactory.createSentence(s);
	}
	
	public DocumentElement christmas(VerbObject verbObjects, String type) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		
		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);
		
		PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
		pp.setPreposition("with");
		pp.addPreModifier(type);
		pp.addPostModifier(tbpd.getPost(verbObjects.getPi()).getTagged());
		
		s.setObject(pp);
		
		System.out.println(realiser.realise(s).getRealisation());
		
		return nlgFactory.createSentence(s);
	}
	
	public DocumentElement welcome(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		
		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);
		s.setObject(verbObjects.getNoun());
		
		System.out.println(realiser.realise(s).getRealisation());
		
		return nlgFactory.createSentence(s);
	}
	
	public ArrayList<String> celebratingType(String sentence, String noun, String tagged) {
		ArrayList<String> info = new ArrayList<String> ();
		
		if (sentence.contains("anniversary")) {
			info.add("anniversary");
			info.add(null);
			info.add(tagged);
		} else if (sentence.contains("friendversary")) {
			info.add("friendversary");
			info.add(null);
			info.add(tagged);
		} else if (sentence.contains("congratulation")) {
			info.add("congratulation");
			info.add(getObject(noun, tagged).get(0));
			info.add(getObject(noun, tagged).get(1));
		} else if (sentence.contains("birthday") || sentence.contains("bday")) {
			info.add("birthday");
			info.add(getBirthdayObject(noun, tagged));
		} else if (sentence.contains("christmas")) {
			info.add("christmas");
			info.add(null);
			info.add(tagged);
		} else if (sentence.contains("new year")) {
			info.add("new year");
			info.add(null);
			info.add(tagged);
		} else if (sentence.contains("welcome")) {
			info.add("");
			info.add(noun);
			info.add(null);
		} else if (sentence.contains("proud")) {
			info.add("proud");
			info.add(getObject(noun, tagged).get(0));
			info.add(getObject(noun, tagged).get(1));
		} else {
			info.add("normal");
		}
		
		return info;
	}
	
	public String verbCelebration(String type) {
		switch(type) {
			case "anniversary": return "celebrated";
			case "friendversary": return "celebrated";
			case "congratulation": return "congratulates";
			case "birthday": return "celebrated";
			case "proud": return "proud";
			case "christmas": return "celebrated";
			case "new year": return "celebrated";
			case "welcome": return "welcome";
		}
		
		return null;
	}
	
	public ArrayList<String> getObject(String noun, String tagged) {
		ArrayList<String> objects = new ArrayList<String> ();
		if (!("").equals(tagged) && tagged != null) {
			objects.add(null);
			objects.add(tagged);
		} else {
			objects.add(noun);
			objects.add(null);
		}
		
		return objects;
	}
	
	public String getBirthdayObject(String noun, String tagged) {
		if (tagged.contains(noun))
			return noun;
		else
			return tagged;
	}
	
	public ArrayList<VerbObject> arrangeByDate(ArrayList<VerbObject> verbObjects) {
		Collections.sort(verbObjects, new Comparator<VerbObject>() {
			@SuppressWarnings("deprecation")
			@Override
			public int compare(VerbObject o1, VerbObject o2) {
				ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
				ToBeProcessed tbp1 = new ToBeProcessed();
				ToBeProcessed tbp2 = new ToBeProcessed();
				
				tbp1 = tbpd.getPost(o1.getPi());
				tbp2 = tbpd.getPost(o2.getPi());
				Date date1 = new Date();
				Date date2 = new Date();
				
				date1.setMonth(Integer.parseInt(tbp1.getMonth()));
				date1.setDate(Integer.parseInt(tbp1.getDay()));
				date1.setYear(Integer.parseInt(tbp1.getYear()));

				date2.setMonth(Integer.parseInt(tbp2.getMonth()));
				date2.setDate(Integer.parseInt(tbp2.getDay()));
				date2.setYear(Integer.parseInt(tbp2.getYear()));
				
				return date1.compareTo(date2);
			}
		});

		return verbObjects;
	}
	
	public String getVerb(int category) {
		String verb = "";
		PostTypeDAO ptd = new PostTypeDAO();
		
		verb = ptd.getSpecificCategory(category);
		
		return verb;
	}
}
