package controller.storyGenerationBody;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import controller.preProcessing.Preprocessing;
import controller.textUnderstanding.TextUnderstanding;
import models.CheckIn;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.PostTypeDAO;
import modelsDAO.ToBeProcessedDAO;
import modelsDAO.VerbObjectDAO;
import simplenlg.features.Feature;
import simplenlg.features.Tense;
import simplenlg.framework.DocumentElement;
import simplenlg.framework.NLGFactory;
import simplenlg.lexicon.Lexicon;
import simplenlg.phrasespec.NPPhraseSpec;
import simplenlg.phrasespec.SPhraseSpec;
import simplenlg.phrasespec.VPPhraseSpec;
import simplenlg.realiser.english.Realiser;

public class GenerateBody {

	private ArrayList<ToBeProcessed> tbps = new ArrayList<ToBeProcessed>();
	private String body = "";

	public GenerateBody() throws IOException {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		this.tbps = tbpd.getAllPosts();

		// TextUnderstanding tu = new TextUnderstanding();
		// tu.performTextUnderstanding(tbps);
		//
		// EventClassification ec = new EventClassification();
		// ec.performEventClassification(tbps);

		this.body = generateWholeBody();
	}

	public String generateWholeBody() {
		String sentence = "";
		ArrayList<VerbObject> vos = new ArrayList<VerbObject>();

		VerbObjectDAO vod = new VerbObjectDAO();
		HashMap<Integer, HashMap<Integer, VerbObject>> verbObjects = vod.getClassifiedPosts();

		Iterator<HashMap.Entry<Integer, HashMap<Integer, VerbObject>>> parent = verbObjects.entrySet().iterator();
		while (parent.hasNext()) {
			HashMap.Entry<Integer, HashMap<Integer, VerbObject>> parentPair = parent.next();

			Iterator<HashMap.Entry<Integer, VerbObject>> child = (parentPair.getValue()).entrySet().iterator();
			while (child.hasNext()) {
				HashMap.Entry<Integer, VerbObject> childPair = child.next();
				VerbObject vo = (VerbObject) childPair.getValue();
				vos.add(vo);
			}

			String output = generateParagraph(arrangeByDate(vos), parentPair.getKey());

			sentence += output + "\n";

			vos.clear();
		}

		System.out.println("BODY SENTENCE: \n" + sentence);

		return sentence;
	}

	public ArrayList<VerbObject> arrangeByDate(ArrayList<VerbObject> verbObjects) {
		Collections.sort(verbObjects, new Comparator<VerbObject>() {
			@Override
			public int compare(VerbObject o1, VerbObject o2) {
				return o1.getDate().compareTo(o2.getDate());
			}
		});

		return verbObjects;
	}

	public String generateParagraph(ArrayList<VerbObject> verbObjects, int postType) {
		String paragraph = "";
		String doer = "";

		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		ToBeProcessedDAO tbp = new ToBeProcessedDAO();

		doer = dkd.getSpecificDirectKnowledge("first_name").split(" ")[0];
		String gender = dkd.getSpecificDirectKnowledge("gender");
		String pronoun = "";
		if (gender.equalsIgnoreCase("female")) {
			pronoun = "She";
		} else if (doer.equalsIgnoreCase("male")) {
			pronoun = "He";
		}

		ArrayList<String> tags = getFrequentTagged(verbObjects);
		if (tags.size() >= 3) {
			ArrayList<VerbObject> posts = getPostsWithTag(tags, verbObjects);
			paragraph += doer + " " + genFirstSentence(tags, verbObjects, postType);
			paragraph += genSecondSentence(posts, postType);
			verbObjects.removeAll(posts);
			paragraph += genSucceedingSentences(verbObjects);
		} else {
			paragraph += genSucceedingSentences(verbObjects);
		}

		if (postType == 10) {
			paragraph += getTravelledPlaces(tbp.getAllWithLocation(), pronoun);
		}
		return paragraph;
	}

	public ArrayList<String> getFrequentTagged(ArrayList<VerbObject> verbObjects) {
		HashMap<String, Integer> tags = new HashMap<String, Integer>();

		for (int i = 0; i < verbObjects.size(); i++) {
			if (verbObjects.get(i).getTagged() != null && !verbObjects.get(i).getTagged().isEmpty()) {
				String user[] = getTagged(verbObjects.get(i).getTagged());
				if (user != null && user.length != 0) {
					for (int j = 0; j < user.length; j++) {
						if (user[j].startsWith(" "))
							user[j] = user[j].substring(1, user[j].length());
						if (user[j].endsWith(" "))
							user[j] = user[j].substring(0, user[j].length() - 1);

						if (tags.containsKey(user[j])) {
							int count = tags.get(user[j]);
							count++;
							tags.put(user[j], count);
						} else {
							tags.put(user[j], 1);
						}
					}
				}
			}
		}

		return sortFrequentTagged(tags);
	}

	public String[] getTagged(String people) {
		people = people.substring(5, people.length());
		String temp[] = null;
		String user[] = null;
		String temp1[] = null;

		if (people.contains(",") && people.contains("and")) {
			if (people.contains(",")) {
				temp = people.split(", ");
				user = new String[temp.length + 1];
				for (int j = 0; j < temp.length - 1; j++)
					user[j] = temp[j];
			}

			if (people.contains("and")) {
				if (temp.length != 0 && temp != null)
					temp1 = temp[temp.length - 1].split(" and ");
				else
					temp1 = people.split(" and ");

				user[user.length - 2] = temp1[0];
				user[user.length - 1] = temp1[1];
			}
		} else {
			user = new String[1];
			user[0] = people;
		}

		return user;
	}

	public ArrayList<String> sortFrequentTagged(HashMap<String, Integer> tags) {
		ArrayList<String> mostFreq = new ArrayList<String>();
		Entry<String, Integer> maxEntry = null;

		for (Entry<String, Integer> entry : tags.entrySet())
			if (maxEntry == null || entry.getValue() > maxEntry.getValue())
				maxEntry = entry;

		if (maxEntry != null) {
			mostFreq.add(maxEntry.getKey());

			for (Entry<String, Integer> entry : tags.entrySet())
				if (entry.getValue() == maxEntry.getValue() && !mostFreq.contains(entry.getKey()))
					mostFreq.add(entry.getKey());
		}

		return mostFreq;
	}

	public ArrayList<VerbObject> getPostsWithTag(ArrayList<String> names, ArrayList<VerbObject> verbObjects) {
		ArrayList<VerbObject> posts = new ArrayList<VerbObject>();

		for (int i = 3; i < names.size(); i++) {
			for (int j = 0; j < verbObjects.size(); j++) {
				String tagged = verbObjects.get(j).getTagged();
				if (tagged.contains(names.get(i)) && !posts.contains(verbObjects.get(j))) {
					posts.add(verbObjects.get(j));
				}
			}
		}

		return posts;
	}

	public String getAction(int action) {
		switch (action) {
		case 1:
			return "bought new item/s";
		case 2:
			return "celebrated most";
		case 3:
			return "watched the most";
		case 4:
			return "played the most";
		case 5:
			return "eaten frequently";
		case 6:
			return "made the most";
		case 7:
			return "mostly drank";
		case 8:
			return "mostly listened to music";
		case 9:
			return "read a lot";
		case 10:
			return "travelled to different places";
		case 11:
			return "often remembered memories";
		case 12:
			return "mostly attended";
		case 13:
			return "the many opinions when";
		case 14:
			return "laughed a lot";
		}

		return null;
	}

	public String genFirstSentence(ArrayList<String> tags, ArrayList<VerbObject> verbObjects, int postType) {
		String template = "has <action> with <people>. ";
		String action = getAction(postType);

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(template);

		while (m.find()) {
			if (m.group(1).contains("action")) {
				template = template.replace("<action>", action);
			}

			if (m.group(1).contains("people")) {
				String tagged = "";
				/*
				 * for (int i = tags.size() - 1; i >= 0; i--) { tagged +=
				 * tags.get(i); if (i > 1) tagged += ", "; else if(i == 1)
				 * tagged += " and "; }
				 */
				int size = 3;
				if (tags.size() < 3) {
					size = tags.size();
				}

				for (int i = size - 1; i >= 0; i--) {
					tagged += tags.get(i);
					if (size == 0)
						tagged += "";
					else if (i > 1)
						tagged += ", ";
					else if (i == 1)
						tagged += " and ";
				}
				template = template.replace("<people>", tagged);
			}
		}

		return template;
	}

	public String genSecondSentence(ArrayList<VerbObject> posts, int postType) {
		String template = "They <verb> <object> together. ";

		PostTypeDAO ptd = new PostTypeDAO();

		// for (int i = 0; i < posts.size(); i++) {
		// System.out.println("POSTS: " + i + ": " + posts.get(i).getVerb());
		// }

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(template);

		while (m.find()) {
			if (m.group(1).contains("verb")) {
				String verb = ptd.getVerb(postType);
				template = template.replace("<verb>", verb);
			}

			if (m.group(1).contains("object")) {
				String noun = "";
				for (int i = posts.size() - 1; i >= 0; i--) {
					noun += posts.get(i).getNoun();
					if (i > 1)
						noun += ", ";
					else if (i == 1)
						noun += " and ";
				}
				template = template.replace("<object>", noun);
			}
		}

		// System.out.println(template);

		return template;
	}

	public String genSucceedingSentences(ArrayList<VerbObject> verbObjects) {
		String paragraph = "";

		HashMap<Integer, ArrayList<VerbObject>> compiledPosts = compileByYear(verbObjects);

		for (HashMap.Entry<Integer, ArrayList<VerbObject>> entry : compiledPosts.entrySet()) {
			System.out.println(entry.getKey());
			for (int i = 0; i < entry.getValue().size(); i++)
				System.out.println(entry.getValue().get(i).getDate().toString());
			paragraph += determineYear(entry.getKey(), entry.getValue());
		}

		return paragraph;
	}

	public String actualGeneration(VerbObject verbObject) {
		String paragraph = "";
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		String doer = "";
		String pronoun = "";

		doer = dkd.getSpecificDirectKnowledge("gender");
		if (doer.equalsIgnoreCase("female")) {
			pronoun = "She";
		} else if (doer.equalsIgnoreCase("male")) {
			pronoun = "He";
		}

		Lexicon lexicon = Lexicon.getDefaultLexicon();
		NLGFactory nlgFactory = new NLGFactory(lexicon);
		Realiser realiser = new Realiser(lexicon);

		SPhraseSpec p = nlgFactory.createClause();
		p.setSubject(pronoun);
		p.setVerb(verbObject.getVerb());
		p.setObject(verbObject.getNoun());
		p.setComplement(verbObject.getTagged());
		p.setComplement(verbObject.getLocation());

		p.setFeature(Feature.TENSE, Tense.PAST);

		// DocumentElement documentElement = nlgFactory.createSentence(p);

		paragraph = realiser.realiseSentence(p);

		return paragraph;
	}

	public String determineYear(int year, ArrayList<VerbObject> verbObjects) {
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
			sentence += determine2A(verbObjects.get(0));
		} else if (yearDifference == 1) {
			random = chooseRandomTemplate(lastYr.length);
			sentence += lastYr[random];
			// sentence += "Last year, ";
			sentence += determine2B(verbObjects.get(0));
		} else if (yearDifference == 5) {
			random = chooseRandomTemplate(lastNYr.length);
			m = p.matcher(lastNYr[random]);
			sentence = lastNYr[random];
			while (m.find()) {
				if (m.group(1).contains("x")) {
					sentence = sentence.replace("<x>", String.valueOf(year));
				}
			}
			// sentence += "Last " + yearDifference + " years ago, ";
			sentence += determine2B(verbObjects.get(0));
		} else {
			random = chooseRandomTemplate(inN.length);
			m = p.matcher(inN[random]);
			sentence = inN[random];
			while (m.find()) {
				if (m.group(1).contains("x")) {
					sentence = sentence.replace("<x>", String.valueOf(year));
				}
			}
			// sentence += "In " + year + ", ";
			sentence += determine2B(verbObjects.get(0));
		}

		sentence += determine3(verbObjects);

		return sentence;
	}

	public String determine2A(VerbObject verbObject) {
		String[] recently = { "Recently, ", "In recent times, ", "In recent past, ", "Not long ago, " };
		String[] monthsAgo = { "A few months ago, ", "During the past few months, " };
		String[] thisYr = { "This year, in <month>, ", "Almost a year ago, ", "Many months ago, ", "Early this year," };
		String sentence = "";
		String s = actualGeneration(verbObject);
		s = s.substring(0, 1).toLowerCase() + s.substring(1, s.length() - 1);

		Calendar cal = Calendar.getInstance();
		cal.setTime(verbObject.getDate());
		int month = cal.get(Calendar.MONTH);

		LocalDateTime now = LocalDateTime.now();
		int monthNow = now.getMonthValue();

		int monthDifference = monthNow - month;

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (monthDifference == 0) {
			random = chooseRandomTemplate(recently.length);
			sentence += recently[random] + s + ". ";
			// sentence += "Recently, " + s;
		} else if (monthDifference <= 5) {
			random = chooseRandomTemplate(monthsAgo.length);
			sentence += monthsAgo[random] + s + ". ";
			// sentence += "A few months ago, " + s;
		} else {
			random = chooseRandomTemplate(thisYr.length);
			m = p.matcher(thisYr[random]);
			sentence = thisYr[random];
			while (m.find()) {
				if (m.group(1).contains("month")) {
					sentence = sentence.replace("<month>", verbObject.getMonth(String.valueOf(month + 1)));
				}
			}
			sentence += s + ". ";
			// sentence += "This year, in " +
			// verbObject.getMonth(String.valueOf(month + 1)) + ", " + s;
		}

		return sentence;
	}

	public String determine2B(VerbObject verbObject) {
		String[] earlyMonth = { "Early that <month>, <sentence>", "As the month starts that year, <sentence>",
				"During the start of the month, <sentence>", "<sentence> during the start of the month",
				"<sentence> as the month starts", "<sentence> early <month> that year" };
		String[] midMonth = { "In the middle of the <month>, <sentence>", "Mid-<month>, <sentence>",
				"<sentence> mid-<month>", "During <month>, <sentence>" };
		String[] endMonth = { "Before the end approaches <month>, <sentence>",
				"As the month of <month> ends, <sentence>", "Near the end of <month> in that year, <sentence>",
				"Near the end of that month of <month>, <sentence>", "<sentence> as <month> ends that year",
				"<sentence> near the end of the <month> that year", "<sentence> when <month> approaches the last day" };
		String sentence = "";
		String s = actualGeneration(verbObject);
		s = s.substring(0, 1).toLowerCase() + s.substring(1, s.length() - 1);

		Calendar cal = Calendar.getInstance();
		cal.setTime(verbObject.getDate());

		int month = cal.get(Calendar.MONTH);
		int day = cal.get(Calendar.DATE);
		String monthWord = verbObject.getMonth(String.valueOf(month + 1));

		int random = -1;

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = null;

		if (day >= 1 && day <= 10) {
			random = chooseRandomTemplate(earlyMonth.length);
			m = p.matcher(earlyMonth[random]);
			sentence = earlyMonth[random];
			while (m.find()) {
				if (m.group(1).contains("month")) {
					sentence = sentence.replace("<month>", monthWord);
				}
				if (m.group(1).contains("sentence")) {
					sentence = sentence.replace("<sentence>", s);
				}
			}
			sentence += ". ";
			// sentence += "early that " + monthWord + ", " + s;
		} else if (day >= 11 && day <= 20) {
			random = chooseRandomTemplate(midMonth.length);
			m = p.matcher(midMonth[random]);
			sentence = midMonth[random];
			while (m.find()) {
				if (m.group(1).contains("month")) {
					sentence = sentence.replace("<month>", monthWord);
				}
				if (m.group(1).contains("sentence")) {
					sentence = sentence.replace("<sentence>", s);
				}
			}
			sentence += ". ";
			// sentence += "mid-" + monthWord + ", " + s;
		} else if (day >= 21 && day <= 31) {
			random = chooseRandomTemplate(endMonth.length);
			m = p.matcher(endMonth[random]);
			sentence = endMonth[random];
			while (m.find()) {
				if (m.group(1).contains("month")) {
					sentence = sentence.replace("<month>", verbObject.getMonth(String.valueOf(month + 1)));
				}
				if (m.group(1).contains("sentence")) {
					sentence = sentence.replace("<sentence>", s);
				}
			}
			sentence += ". ";
			// sentence += "as the month of " + monthWord + " ends, " + s;
		}

		return sentence;
	}

	public String determine3(ArrayList<VerbObject> verbObject) {
		String[] a = { "In the same month, <sentence>", "During that time, <sentence>", "Shortly after, <sentence>",
				"During that same month, <sentence>", "<sentence> on the same month.", "<sentence> shortly after." };
		String[] b = { "After <x> months, <sentence>", "<x> months later, <sentence>", "Then, <sentence> <x> months after.",
				"<sentence> <x> months after.", "In that same year, <sentence>", "A few months later, <sentence>",
				"<sentence> in that same year", "<sentence> a few months later", "<sentence> <x> months afterwards",
				"During that same year, <sentence>" };

		String finalSentence = "";

		for (int i = 1; i < verbObject.size(); i++) {
			String sentence = "";
			String s = actualGeneration(verbObject.get(i));
			s = s.substring(0, 1).toLowerCase() + s.substring(1, s.length() - 1);

			Calendar cal = Calendar.getInstance();
			cal.setTime(verbObject.get(i).getDate());
			int month = cal.get(Calendar.MONTH);

			LocalDateTime now = LocalDateTime.now();
			int monthNow = now.getMonthValue();

			int monthDifference = monthNow - month;
			
			int random = -1;

			Pattern p = Pattern.compile("\\<(.*?)\\>");
			Matcher m = null;

			if (i == 1) {
				if (monthDifference == 0) {
					random = chooseRandomTemplate(a.length);
					m = p.matcher(a[random]);
					sentence = a[random];
					while (m.find()) {
						if (m.group(1).contains("x")) {
							sentence = sentence.replace("<x>", verbObject.get(i).getMonth(String.valueOf(month + 1)));
						}
						if (m.group(1).contains("sentence")) {
							sentence = sentence.replace("<sentence>", s);
						}
					}
					sentence += ". ";
//					sentence += "In that same month, " + s;
				} else {
					random = chooseRandomTemplate(b.length);
					m = p.matcher(b[random]);
					sentence = b[random];
					while (m.find()) {
						if (m.group(1).contains("x")) {
							sentence = sentence.replace("<x>", verbObject.get(i).getMonth(String.valueOf(month + 1)));
						}
						if (m.group(1).contains("sentence")) {
							sentence = sentence.replace("<sentence>", s);
						}
					}
					sentence += ". ";
//					sentence += Math.abs(monthDifference) + " months before, " + s;
				}
			}

			finalSentence += sentence;
		}

		return finalSentence;
	}

	public HashMap<Integer, ArrayList<VerbObject>> compileByYear(ArrayList<VerbObject> verbObjects) {
		HashMap<Integer, ArrayList<VerbObject>> vos = new HashMap<Integer, ArrayList<VerbObject>>();
		VerbObject verbObject = null;

		for (int i = verbObjects.size() - 1; i >= 0; i--) {
			ArrayList<VerbObject> posts = new ArrayList<VerbObject>();
			verbObject = verbObjects.get(i);

			Calendar cal = Calendar.getInstance();
			cal.setTime(verbObject.getDate());
			int year = cal.get(Calendar.YEAR);

			if (!vos.containsKey(year)) {
				posts.add(verbObject);
				vos.put(year, posts);
			} else {
				posts = vos.get(year);
				posts.add(verbObject);
				vos.put(year, posts);
			}
		}

		return vos;
	}

	public int chooseRandomTemplate(int size) {
		int chosenTemplate = -1;

		Random random = new Random();
		chosenTemplate = random.nextInt(size - 1 - 0 + 1);

		return chosenTemplate;
	}

	public String getTravelledPlaces(ArrayList<CheckIn> locations, String pronoun) {
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		String wholeSentence = "";
		
		if(dkd.getSpecificDirectKnowledge("location") != null || !dkd.getSpecificDirectKnowledge("location").isEmpty()){

			HashMap<String, ArrayList<String>> loc = new HashMap<String, ArrayList<String>>();
			String currloc = dkd.getSpecificDirectKnowledge("location");
			ArrayList<String> international = new ArrayList<String>();
			String travelledTo = pronoun + " has been to ";
			String travelledInt = pronoun + " has visited foreign countries such as ";
			String connector = "", connector2 = "";
			
			for(int i = 0; i < locations.size(); i ++){
				ArrayList<String> temp = new ArrayList<String>(); 
				//local
				if(currloc.contains(locations.get(i).getCountry())){
					if(!loc.containsKey(locations.get(i).getCity())){
						temp.add(locations.get(i).getPlace());
						loc.put(locations.get(i).getCity(), temp);
					}
					else {
						temp = loc.get(locations.get(i).getCity());
						temp.add(locations.get(i).getPlace());
						loc.put(locations.get(i).getCity(), temp);
					}
				}
				//international
				else{
					if(!international.contains(locations.get(i).getCountry()))
						international.add(locations.get(i).getCountry());
				}
			}
			//local
			int counter = 0;
			for (Entry<String, ArrayList<String>> entry : loc.entrySet()){
				if (loc.entrySet().size() - 2 != counter) {
					connector2 = ", ";
					for (int j = 0; j < entry.getValue().size(); j++) {
						if (entry.getValue().size() - 2 != j)
							connector = ", ";
						else
							connector = " and ";
						
						travelledTo += entry.getValue().get(j) + connector;
					}
					counter++;
					travelledTo = travelledTo.substring(0, travelledTo.length() - 2) + " in " + entry.getKey() + connector2;
				} else {
					connector2 = " and ";
				}
				travelledTo = travelledTo.substring(0, travelledTo.length() - 2) + ".";
			}
			if(international.size() == 1){
				travelledInt = " has visited the foreign country, ";
			}
			for(int j = 0; j < international.size(); j++){
				if (international.size() - 2 != j)
					connector = ", ";
				else
					connector = " and ";
				travelledInt += international.get(j) + connector;
			}
			travelledInt = travelledInt.substring(0, travelledInt.length() - 2) + ".";
			
			if(!loc.isEmpty())
				wholeSentence += travelledTo;
			if(international.size() != 0 )
				wholeSentence += travelledInt;
		}

		return wholeSentence;
	}
}
