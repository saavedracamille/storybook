package controller.storyGenerationBody;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
	private PostTypeDAO ptd;
	private ToBeProcessedDAO tbpd;

	public GenerateBody2() {
		lexicon = Lexicon.getDefaultLexicon();
		nlgFactory = new NLGFactory(lexicon);
		realiser = new Realiser(lexicon);

		ptd = new PostTypeDAO();
		tbpd = new ToBeProcessedDAO();
	}

	public String generateBody(BodyController objects) {
		pronoun = objects.getGender().getPronoun();

		String body = "";
		HashMap<Integer, ArrayList<VerbObject>> vos = objects.getEvents();

		Iterator<HashMap.Entry<Integer, ArrayList<VerbObject>>> parent = vos.entrySet().iterator();
		while (parent.hasNext()) {
			HashMap.Entry<Integer, ArrayList<VerbObject>> parentPair = parent.next();

			if (parentPair.getKey() == 2) {
				String summary = summaryCelebrates(objects.getCelebrates());
				body = !("").equals(summary) && summary != null ? body + summary : body + "";
								
				HashMap<Integer, ArrayList<VerbObject>> compiledByYear = compileByYear(parentPair.getValue());
				
				for (HashMap.Entry<Integer, ArrayList<VerbObject>> entry : compiledByYear.entrySet()) {
					ArrayList<String> timeElements = new ArrayList<String> ();
					String s = "";
					for (int i = 0; i < entry.getValue().size(); i++) {
						if (i == entry.getValue().size() - 1) {
							timeElements.add(determineYear(entry.getKey(), entry.getValue().get(i)));
						} else {
							timeElements.add(determine3(entry.getValue().get(i)));
						}
					}
					
//					for (int j = 0; j < timeElements.size(); j++)
//						System.out.println("time element " + j + " " + timeElements.get(j));
					
					s = generateCelebratingPosts(entry.getValue(), timeElements);
					body = !("").equals(s) && s != null ? body + s : body + "";
				}
				body += "<br><br>";
			} else if (parentPair.getKey() == 5) {
				String summary = summaryRestaurant(objects.getRestaurants());
				body = !("").equals(summary) && summary != null ? body + summary : body + "";
				
				HashMap<Integer, ArrayList<VerbObject>> compiledByYear = compileByYear(parentPair.getValue());
				
				for (HashMap.Entry<Integer, ArrayList<VerbObject>> entry : compiledByYear.entrySet()) {
					ArrayList<String> timeElements = new ArrayList<String> ();
					String s = "";
					
					for (int i = 0; i < entry.getValue().size(); i++) {
						if (i == entry.getValue().size() - 1) {
							timeElements.add(determineYear(entry.getKey(), entry.getValue().get(i)));
						} else {
							timeElements.add(determine3(entry.getValue().get(i)));
						}
					}
				
					s = generateEatingPosts(entry.getValue(), timeElements);
					body = !("").equals(s) && s != null ? body + s : body + "";
				}
				body += "<br><br>";
			} else if (parentPair.getKey() == 7) {
				HashMap<Integer, ArrayList<VerbObject>> compiledByYear = compileByYear(parentPair.getValue());
				
				for (HashMap.Entry<Integer, ArrayList<VerbObject>> entry : compiledByYear.entrySet()) {
					ArrayList<String> timeElements = new ArrayList<String> ();
					String s = "";
					
					for (int i = 0; i < entry.getValue().size(); i++) {
						if (i == entry.getValue().size() - 1) {
							timeElements.add(determineYear(entry.getKey(), entry.getValue().get(i)));
						} else {
							timeElements.add(determine3(entry.getValue().get(i)));
						}
					}
				
					s = generalSentences(entry.getValue(), timeElements);
					body = !("").equals(s) && s != null ? body + s : body + "";
				}
				body += "<br><br>";
			} else if (parentPair.getKey() == 10) {
				HashMap<Integer, ArrayList<VerbObject>> compiledByYear = compileByYear(parentPair.getValue());
				
				for (HashMap.Entry<Integer, ArrayList<VerbObject>> entry : compiledByYear.entrySet()) {
					ArrayList<String> timeElements = new ArrayList<String> ();
					String s = "";
					for (int i = 0; i < entry.getValue().size(); i++) {
						if (i == entry.getValue().size() - 1) {
							timeElements.add(determineYear(entry.getKey(), entry.getValue().get(i)));
						} else {
							timeElements.add(determine3(entry.getValue().get(i)));
						}
					}
					
					s = generalSentences(entry.getValue(), timeElements);
					body = !("").equals(s) && s != null ? body + s : body + "";
				}
			}
			String summary = summaryTravelLocal(objects.getTravelLocals());
			body = !("").equals(summary) && summary != null ? body + summary : body + "";
			
			body += "<br><br>";
			
			summary = summaryTravelIntl(objects.getTravelIntl());
			body = !("").equals(summary) && summary != null ? body + summary : body + "";
		}

		// DocumentElement par = nlgFactory.createParagraph(list);

		// return realiser.realise(par).getRealisation();
		return body;
	}

	public String summaryCelebrates(Celebrate celebrate) {
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

			// return nlgFactory.createSentence(s1);
			return realiser.realise(nlgFactory.createSentence(s1)).getRealisation();
		} else
			return null;
	}

	public String summaryTravelLocal(ArrayList<TravelLocal> travelLocals) {
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

			// return nlgFactory.createSentence(s1);
			return realiser.realise(nlgFactory.createSentence(s1)).getRealisation();
		} else
			return null;
	}

	public String summaryTravelIntl(TravelIntl travelIntl) {
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

			// return nlgFactory.createSentence(s1);
			return realiser.realise(nlgFactory.createSentence(s1)).getRealisation();
		} else
			return null;
	}

	public String summaryRestaurant(ArrayList<Restaurants> restaurants) {
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

			// return nlgFactory.createSentence(s1);
			return realiser.realise(nlgFactory.createSentence(s1)).getRealisation();
		} else
			return null;
	}

	public String generalSentences(ArrayList<VerbObject> verbObjects, ArrayList<String> timeElements) {
		ArrayList<DocumentElement> sentences = new ArrayList<DocumentElement>();

		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {
				if (!timeElements.get(i).contains("<sentence>")) {
					SPhraseSpec s = new SPhraseSpec(nlgFactory);
					s.setSubject(pronoun);
					s.setVerb(verbObjects.get(i).getVerb());
					s.setFeature(Feature.TENSE, Tense.PAST);
					s.setObject(verbObjects.get(i).getNoun());
	
	//				ToBeProcessed tbp = tbpd.getPost(verbObjects.get(i).getPi());
	
					PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
					pp.addComplement(timeElements.get(i));
					s.addFrontModifier(pp);
	
					sentences.add(nlgFactory.createSentence(s));
				} else {
					Pattern p = Pattern.compile("\\<(.*?)\\>");
					Matcher m = p.matcher(timeElements.get(i));
					String a = "";
					
					SPhraseSpec s = new SPhraseSpec(nlgFactory);
					s.setSubject(pronoun);
					s.setVerb(verbObjects.get(i).getVerb());
					s.setFeature(Feature.TENSE, Tense.PAST);
					s.setObject(verbObjects.get(i).getNoun());
					
					while (m.find())
						a = timeElements.get(i).replace("<sentence>", realiser.realise(s).getRealisation());
					
					sentences.add(nlgFactory.createSentence(a));
				}
			}
			
			DocumentElement par = nlgFactory.createParagraph(sentences);

//			System.out.println(realiser.realise(par).getRealisation());
			
			// return par;
			return realiser.realise(par).getRealisation();
		} else
			return null;
	}

	public String generateEatingPosts(ArrayList<VerbObject> verbObjects, ArrayList<String> timeElements) {
		ArrayList<DocumentElement> sentences = new ArrayList<DocumentElement>();

		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {
				if (!timeElements.get(i).contains("<sentence>")) {
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
	
					if (pp != null)
						s.addComplement(pp);
	
//					ToBeProcessed tbp = tbpd.getPost(verbObjects.get(i).getPi());
	
					PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
					pp2.addComplement(timeElements.get(i));
					s.addFrontModifier(pp2);
	
					s.setObject(pp2);
	
					sentences.add(nlgFactory.createSentence(s));
				} else {
					Pattern p = Pattern.compile("\\<(.*?)\\>");
					Matcher m = p.matcher(timeElements.get(i));
					String a = "";
					
					SPhraseSpec s = new SPhraseSpec(nlgFactory);
					s.setSubject(pronoun);
					s.setVerb(verbObjects.get(i).getVerb());
					s.setFeature(Feature.TENSE, Tense.PAST);
					s.setObject(verbObjects.get(i).getNoun());
					
					while (m.find())
						a = timeElements.get(i).replace("<sentence>", realiser.realise(s).getRealisation());
					
					sentences.add(nlgFactory.createSentence(a));
				}
			}
		}

		DocumentElement par = nlgFactory.createParagraph(sentences);

		// return par;
		return realiser.realise(par).getRealisation();
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
				if (toggle == true && checkIn.getCountry().equals(checkIn.getCity()))
					location += ", " + checkIn.getCity();
		}

		return location;
	}

	public String generateCelebratingPosts(ArrayList<VerbObject> verbObjects, ArrayList<String> timeElements) {
		ArrayList<String> sentences = new ArrayList<String>();
		ArrayList<VerbObject> vos = new ArrayList<VerbObject>();

		if (verbObjects.size() != 0) {
			for (int i = verbObjects.size() - 1; i >= 0; i--) {
				ArrayList<String> celebratingType = celebratingType(verbObjects.get(i).getSentence(),
						verbObjects.get(i).getNoun(), tbpd.getPost(verbObjects.get(i).getPi()).getTagged());

				if (celebratingType.get(0).equals("anniversary") || celebratingType.get(0).equals("friendversary")) {
					sentences.add(celebGeneral(verbObjects.get(i), celebratingType.get(0), timeElements.get(i)));
					// System.out.println("anniv or frienversary");
					vos.add(verbObjects.get(i));
				} else if (celebratingType.get(0).equals("new year") || celebratingType.get(0).equals("christmas")) {
					sentences.add(celebGeneral(verbObjects.get(i), celebratingType.get(0), timeElements.get(i)));
					// System.out.println("new year or christmas");
					vos.add(verbObjects.get(i));
				} else if (celebratingType.get(0).equals("welcome")) {
					sentences.add(celebGeneral(verbObjects.get(i), celebratingType.get(0), timeElements.get(i)));
					// System.out.println("welcome");
					vos.add(verbObjects.get(i));
				} else if (celebratingType.get(0).equals("congratulations")) {
					sentences.add(congrats(verbObjects.get(i), celebratingType.get(0)));
					// System.out.println("congrats");
					vos.add(verbObjects.get(i));
				} else if (celebratingType.get(0).equals("birthday")) {
					sentences.add(birthday(verbObjects.get(i), celebratingType.get(0)));
					// System.out.println("birthday");
					vos.add(verbObjects.get(i));
				} else if (celebratingType.get(0).equals("normal")) {
					verbObjects.removeAll(vos);
					sentences.add(generalSentences(verbObjects, timeElements));
				}

				// SPhraseSpec s = new SPhraseSpec(nlgFactory);
				// s.setSubject(pronoun);
				// s.setVerb(verbCelebration(celebratingType.get(0)));
				// s.setFeature(Feature.TENSE, Tense.PAST);
				//
				// PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
				//
				// if (celebratingType.get(1) != null) {
				// s.setObject(celebratingType.get(1) + " " +
				// celebratingType.get(0));
				// }
			}
		}

		String a = "";
		for (int i = 0; i < sentences.size(); i++) {
			a += sentences.get(i);
		}

		// DocumentElement par = nlgFactory.createParagraph(sentences);

		// System.out.println(realiser.realise(par).getRealisation());

		// return realiser.realise(par).getRealisation();
		return a;
	}

	public String celebGeneral(VerbObject verbObjects, String type, String timeElement) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);

		NPPhraseSpec s1 = nlgFactory.createNounPhrase(pronoun);
		CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase();
		obj.addCoordinate(s1);
		if (!("").equals(verbObjects.getNoun()) && verbObjects.getNoun() != null) {
			NPPhraseSpec object1 = nlgFactory.createNounPhrase(verbObjects.getNoun());
			obj.addCoordinate(object1);
		}

		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);

		PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
		pp.setPreposition("their");
		pp.addComplement(type + " together");
		s.addComplement(pp);
		
//		ToBeProcessed tbp = tbpd.getPost(verbObjects.getPi());
		
		PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
		pp2.addComplement(timeElement);
		s.addFrontModifier(pp2);

		s.setSubject(obj);
		s.setObject(pp);
		
//		System.out.println(realiser.realise(s).getRealisation());

		// return nlgFactory.createSentence(s);
		return realiser.realise(nlgFactory.createSentence(s)).getRealisation();
	}

	public String christmas(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);

		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);

		PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
		pp.setPreposition("with");
		pp.addPreModifier(type);
		pp.addPostModifier(tbpd.getPost(verbObjects.getPi()).getTagged());

		s.addComplement(pp);

		ToBeProcessed tbp = tbpd.getPost(verbObjects.getPi());

		PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
		pp2.addComplement(tbp.getMonthWord(tbp.getMonth()) + " " + tbp.getDay() + ", " + tbp.getYear() + ",");
		pp2.setPreposition("On");
		s.addFrontModifier(pp2);

		s.setObject(pp);

		// return nlgFactory.createSentence(s);
		return realiser.realise(nlgFactory.createSentence(s)).getRealisation();
	}

	public String welcome(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);

		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);
		s.setObject(verbObjects.getNoun());

		ToBeProcessed tbp = tbpd.getPost(verbObjects.getPi());

		PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
		pp2.addComplement(tbp.getMonthWord(tbp.getMonth()) + " " + tbp.getDay() + ", " + tbp.getYear() + ",");
		pp2.setPreposition("On");
		s.addFrontModifier(pp2);

		// return nlgFactory.createSentence(s);
		return realiser.realise(nlgFactory.createSentence(s)).getRealisation();
	}

	public String congrats(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);

		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);
		s.setObject(tbpd.getPost(verbObjects.getPi()).getTagged());

		ToBeProcessed tbp = tbpd.getPost(verbObjects.getPi());

		PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
		pp2.addComplement(tbp.getMonthWord(tbp.getMonth()) + " " + tbp.getDay() + ", " + tbp.getYear() + ",");
		pp2.setPreposition("On");
		s.addFrontModifier(pp2);

		// return nlgFactory.createSentence(s);
		return realiser.realise(nlgFactory.createSentence(s)).getRealisation();
	}

	public String birthday(VerbObject verbObjects, String type) {
		SPhraseSpec s = new SPhraseSpec(nlgFactory);
		String tagged = tbpd.getPost(verbObjects.getPi()).getTagged();
		String noun = verbObjects.getNoun();

		s.setSubject(pronoun);
		s.setVerb(verbCelebration(type));
		s.setFeature(Feature.TENSE, Tense.PAST);

		if (!tagged.isEmpty() && tagged != "") {
			s.setObject("birthday");
			PPPhraseSpec pp = new PPPhraseSpec(nlgFactory);
			pp.setPreposition("with");
			pp.addComplement(tagged);
			s.addComplement(pp);
		} else {
			s.setObject(noun);
		}

		ToBeProcessed tbp = tbpd.getPost(verbObjects.getPi());

		PPPhraseSpec pp2 = new PPPhraseSpec(nlgFactory);
		pp2.addComplement(tbp.getMonthWord(tbp.getMonth()) + " " + tbp.getDay() + ", " + tbp.getYear() + ",");
		pp2.setPreposition("On");
		s.addFrontModifier(pp2);

		// return nlgFactory.createSentence(s);
		return realiser.realise(nlgFactory.createSentence(s)).getRealisation();
	}

	public ArrayList<String> celebratingType(String sentence, String noun, String tagged) {
		ArrayList<String> info = new ArrayList<String>();

		if (sentence.contains("anniversary")) {
			info.add("anniversary");
		} else if (sentence.contains("friendversary")) {
			info.add("friendversary");
		} else if (sentence.contains("congratulation")) {
			info.add("congratulation");
		} else if (sentence.contains("birthday") || sentence.contains("bday")) {
			info.add("birthday");
			info.add(getBirthdayObject(noun, tagged));
		} else if (sentence.contains("christmas")) {
			info.add("christmas");
		} else if (sentence.contains("new year")) {
			info.add("new year");
		} else if (sentence.contains("welcome")) {
			info.add("welcome");
		} else if (sentence.contains("proud")) {
			info.add("proud");
		} else {
			info.add("normal");
		}

		return info;
	}

	public String verbCelebration(String type) {
		switch (type) {
		case "anniversary":
			return "celebrated";
		case "friendversary":
			return "celebrated";
		case "congratulation":
			return "congratulates";
		case "birthday":
			return "celebrated";
		case "proud":
			return "proud";
		case "christmas":
			return "celebrated";
		case "new year":
			return "celebrated";
		case "welcome":
			return "welcome";
		}

		return null;
	}

	public ArrayList<String> getObject(String noun, String tagged) {
		ArrayList<String> objects = new ArrayList<String>();
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

		verb = ptd.getSpecificCategory(category);

		return verb;
	}

	public int chooseRandomTemplate(int size) {
		int chosenTemplate = -1;

		Random random = new Random();
		chosenTemplate = random.nextInt(size - 1 - 0 + 1);

		return chosenTemplate;
	}

	public HashMap<Integer, ArrayList<VerbObject>> compileByYear(ArrayList<VerbObject> verbObjects) {
		HashMap<Integer, ArrayList<VerbObject>> vos = new HashMap<Integer, ArrayList<VerbObject>>();
		ToBeProcessed tbp = new ToBeProcessed();

		for (int i = verbObjects.size() - 1; i >= 0; i--) {
			ArrayList<VerbObject> posts = new ArrayList<VerbObject>();
			tbp = tbpd.getPost(verbObjects.get(i).getPi());
			String year = tbp.getYear();

			int y = Integer.parseInt(year);

			if (!vos.containsKey(y)) {
				posts.add(verbObjects.get(i));
				vos.put(y, posts);
			} else {
				posts = vos.get(y);
				posts.add(verbObjects.get(i));
				vos.put(y, posts);
			}
		}

		return vos;
	}

	public String determineYear(int year, VerbObject verbObject) {
		String[] lastYr = { "A year ago, ", "In the previous year, ", "Last year, " };
		String[] lastNYr = { "<x> years ago, ", "Last <x> years, ", "About <x> years before today, " };
		String[] inN = { "More than half a decade ago, ", "During <x>, ", "In <x>, " };
		String sentence = "";
		
		int yearDifference = 0;
		LocalDateTime now = LocalDateTime.now();
		int yearNow = now.getYear();
		yearDifference = yearNow - year;

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (yearDifference == 0) {
			sentence += determine2A(verbObject);
		} else if (yearDifference == 1) {
			random = chooseRandomTemplate(lastYr.length);
			sentence += lastYr[random];
			sentence += determine2B(verbObject);
		} else if (yearDifference == 5) {
			random = chooseRandomTemplate(lastNYr.length);
			m = p.matcher(lastNYr[random]);
			sentence = lastNYr[random];
			while (m.find())
				if (m.group(1).contains("x"))
					sentence = lastNYr[random].replace("<x>", String.valueOf(Math.abs(yearDifference)));
			sentence += determine2B(verbObject);
		} else {
			random = chooseRandomTemplate(inN.length);
			m = p.matcher(inN[random]);
			sentence = inN[random];
			while (m.find())
				if (m.group(1).contains("x"))
					sentence = sentence.replace("<x>", String.valueOf(year));
			sentence += determine2B(verbObject);
		}

//		sentence += determine3(verbObject);
//		System.out.println("determine year: " + sentence);

		return sentence;
	}

	public String determine2A(VerbObject verbObject) {
		String[] recently = { "Recently, ", "In recent times, ", "In recent past, ", "Not long ago, " };
		String[] monthsAgo = { "A few months ago, ", "During the past few months, " };
		String[] thisYr = { "This year, in <month>, ", "Almost a year ago, ", "Many months ago, ", "Early this year," };

		ToBeProcessed tbp = tbpd.getPost(verbObject.getPi());

		int month = Integer.parseInt(tbp.getMonth());

		LocalDateTime now = LocalDateTime.now();
		int monthNow = now.getMonthValue();

		int monthDifference = monthNow - month;

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (monthDifference == 0) {
			random = chooseRandomTemplate(recently.length);
			return recently[random];
		} else if (monthDifference <= 5) {
			random = chooseRandomTemplate(monthsAgo.length);
			return monthsAgo[random];
		} else {
			random = chooseRandomTemplate(thisYr.length);
			m = p.matcher(thisYr[random]);
			while (m.find())
				if (m.group(1).contains("month"))
					return thisYr[random].replace("<month>", tbp.getMonthWord(String.valueOf(month)));
			
			return thisYr[random];
		}
	}

	public String determine2B(VerbObject verbObject) {
		String[] earlyMonth = { "early that <month>, ", "during the start of the month, ", "as the month starts, ",
				"early <month> that year, " };
		String[] midMonth = { "in the middle of the <month>, ", "mid-<month>, ", "during <month>, " };
		String[] endMonth = { "before the end approaches <month>, ",
				"as the month of <month> ends, ", "near the end of <month> in that year, ",
				"near the end of that month of <month>, ", "as <month> ends that year ",
				"near the end of <month> that year, ", "when <month> approaches the last few days, " };

		ToBeProcessed tbp = tbpd.getPost(verbObject.getPi());

		int month = Integer.parseInt(tbp.getMonth()) + 1;
		int day = Integer.parseInt(tbp.getDay());
		String monthWord = tbp.getMonthWord(String.valueOf(month));

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (day >= 1 && day <= 10) {
			random = chooseRandomTemplate(earlyMonth.length);
			m = p.matcher(earlyMonth[random]);
			while (m.find()) {
				if (m.group(1).contains("month"))
					return earlyMonth[random].replace("<month>", monthWord);
			}
			
			return earlyMonth[random];
		} else if (day >= 11 && day <= 20) {
			random = chooseRandomTemplate(midMonth.length);
			m = p.matcher(midMonth[random]);
			while (m.find()) {
				if (m.group(1).contains("month")) {
					return midMonth[random].replace("<month>", monthWord);
				}
			}
			
			return midMonth[random];
		} else {
			random = chooseRandomTemplate(endMonth.length);
			m = p.matcher(endMonth[random]);
			while (m.find()) {
				if (m.group(1).contains("month")) {
					return endMonth[random].replace("<month>", tbp.getMonthWord(String.valueOf(month)));
				}
			}

			return endMonth[random];
		}
	}

	public String determine3(VerbObject verbObject) {
		String[] a = { "In the same month, ", "During that time, ", "Shortly before, ",
				"During that same month, "};
		String[] b = {"In that same year, ", "A few months earlier, ", "During that same year, " };

		ToBeProcessed tbp = tbpd.getPost(verbObject.getPi());
		
		int month = Integer.parseInt(tbp.getMonth());

		LocalDateTime now = LocalDateTime.now();
		int monthNow = now.getMonthValue();

		int monthDifference = monthNow - month;

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (monthDifference == 0) {
			random = chooseRandomTemplate(a.length);
			return a[random];
		} else {
			random = chooseRandomTemplate(b.length);
			return b[random];
		}
	}
}
