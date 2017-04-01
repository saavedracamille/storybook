package controller.storyGenerationBody;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

		 Preprocessing p = new Preprocessing(tbps);
		 this.tbps = p.getUpdatedPosts();

		 TextUnderstanding tu = new TextUnderstanding();
		 tu.performTextUnderstanding(tbps);

		 EventClassification ec = new EventClassification();
		 ec.performEventClassification(tbps);

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

		doer = dkd.getSpecificDirectKnowledge("first_name").split(" ")[0];
		
		ArrayList<String> tags = getFrequentTagged(verbObjects);
		ArrayList<VerbObject> posts = getPostsWithTag(tags, verbObjects);
		paragraph += doer + " " + genFirstSentence(tags, verbObjects, postType);
		paragraph += genSecondSentence(posts, postType);
		verbObjects.removeAll(posts);
		paragraph += genSucceedingSentences(verbObjects);

		return paragraph;
	}

	public ArrayList<String> getFrequentTagged(ArrayList<VerbObject> verbObjects) {
		HashMap<String, Integer> tags = new HashMap<String, Integer>();

		for (int i = 0; i < verbObjects.size(); i++) {
			if (verbObjects.get(i).getTagged() != null && !verbObjects.get(i).getTagged().isEmpty()) {
				String user[] = getTagged(verbObjects.get(i).getTagged());
				if (user != null && user.length != 0) {
					for (int j = 0; j < user.length; j++) {
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
		ArrayList<String> mostFreq = new ArrayList<String> ();
		Entry<String,Integer> maxEntry = null;

		for(Entry<String, Integer> entry : tags.entrySet())
		    if (maxEntry == null || entry.getValue() > maxEntry.getValue())
		        maxEntry = entry;
		
		if(maxEntry!= null) {
			mostFreq.add(maxEntry.getKey());
			
			for(Entry<String, Integer> entry : tags.entrySet())
				if (entry.getValue() == maxEntry.getValue() && !mostFreq.contains(entry.getKey()))
					mostFreq.add(entry.getKey());
		}
		
		return mostFreq;
	}
	
	public ArrayList<VerbObject> getPostsWithTag(ArrayList<String> names, ArrayList<VerbObject> verbObjects){
		ArrayList<VerbObject> posts = new ArrayList<VerbObject> ();
		
		for (int i = 0; i < names.size(); i ++){
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
		switch(action){
			case 1: return "bought new item/s";
			case 2: return "celebrated most";
			case 3: return "watched the most";
			case 4: return "played the most"; 
			case 5: return "eaten frequently";
			case 6: return "made the most";
			case 7: return "mostly drank"; 
			case 8: return "mostly listened to music"; 
			case 9: return "read a lot"; 
			case 10: return "travelled to different places"; 
			case 11: return "often remembered memories";
			case 12: return "mostly attended";
			case 13: return "the many opinions when";
			case 14: return "laughed a lot"; 
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
				for (int i = tags.size() - 1; i >= 0; i--) {
					tagged += tags.get(i);
					if (i > 1)
						tagged += ", ";
					else if(i == 1)
						tagged += " and ";
				}
				template = template.replace("<people>", tagged);
			}
		}
		
		return template;
	}
	
	public String genSecondSentence(ArrayList<VerbObject> posts, int postType) {
		String template = "They <verb> <object>together. ";
		
		PostTypeDAO ptd = new PostTypeDAO();
		
//		for (int i = 0; i < posts.size(); i++) {
//			System.out.println("POSTS: " + i + ": " + posts.get(i).getVerb());
//		}
		
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
					else if(i == 1)
						noun += " and ";
				}
				template = template.replace("<object>", noun);
			}
		}
		
//		System.out.println(template);
		
		return template;
	}
	
	public String genSucceedingSentences(ArrayList<VerbObject> verbObjects) {
		String doer = "";
		String paragraph = "";

		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();

		doer = dkd.getSpecificDirectKnowledge("first_name").split(" ")[0];

		Lexicon lexicon = Lexicon.getDefaultLexicon();
		NLGFactory nlgFactory = new NLGFactory(lexicon);
		Realiser realiser = new Realiser(lexicon);

		ArrayList<DocumentElement> documentElements = new ArrayList<DocumentElement>();
		
		for (int i = verbObjects.size() - 1; i >= 0; i--) {
			ToBeProcessed data = tbpd.getPost(verbObjects.get(i).getPi());

			Calendar cal = Calendar.getInstance();
			cal.setTime(verbObjects.get(i).getDate());

			int month = cal.get(Calendar.MONTH);
			int day = cal.get(Calendar.DAY_OF_MONTH);
			int year = cal.get(Calendar.YEAR);

			String monthWord = data.getMonth(String.valueOf(month + 1));
			String date = "On " + monthWord + " " + day + ", " + year + ", ";

			SPhraseSpec p = nlgFactory.createClause();
			p.addFrontModifier(date);
			p.setSubject(doer);
			p.setVerb(verbObjects.get(i).getVerb().toLowerCase());
			p.setObject(verbObjects.get(i).getNoun().toLowerCase());
			p.setComplement(verbObjects.get(i).getTagged());
			p.setComplement(verbObjects.get(i).getLocation());

			p.setFeature(Feature.TENSE, Tense.PAST);

			DocumentElement documentElement = nlgFactory.createSentence(p);

			documentElements.add(documentElement);
		}

		DocumentElement par = nlgFactory.createParagraph(documentElements);
		paragraph = realiser.realiseSentence(par);
		
		return paragraph;
	}
}
