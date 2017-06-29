package controller.storyGenerationConclusion;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.CheckIn;
import models.DirectKnowledge;
import models.Event;
import models.Interest;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EventDAO;
import modelsDAO.LikesDAO;

public class GenerateConclusion {
	private String conclusion = "";
	private static String interestTemplate = " such as <interest> ";
	private static String eventTemplate = " <name> at <location> ";
	private ArrayList<DirectKnowledge> directKnowledges = new ArrayList<DirectKnowledge>();
	private ArrayList<String> topFiveTypes = new ArrayList<String>();
	private ArrayList<Event> eventgoing = new ArrayList<Event>();
	private ArrayList<Event> eventinterested = new ArrayList<Event>();
	
	public GenerateConclusion() {
		LikesDAO ld = new LikesDAO();
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		EventDAO ed = new EventDAO();
		
		directKnowledges = dkd.getDirectKnowledge();
		topFiveTypes = ld.getTopThreeTypes();
		eventgoing = ed.getTopThreeGoing();
		eventinterested = ed.getTopThreeInterested();
		
		String wholeName = getName();
		
		conclusion += wholeName + "likes ";
		
		for (int i = 0; i < topFiveTypes.size(); i++) {
			ArrayList<Interest> topThreeInterests = ld.getTopThreeInterest(topFiveTypes.get(i));
			conclusion += toPlural(topFiveTypes.get(i));
			conclusion += generateSentences(topFiveTypes.get(i), topThreeInterests);
			
			if (i < topFiveTypes.size() - 2) {
				if (conclusion.endsWith(" "))
					conclusion = conclusion.substring(0, conclusion.length() - 1);
				conclusion += ", ";
			} else if (i == topFiveTypes.size() - 2)
				conclusion += "and ";
		}
		
		if (conclusion.endsWith(" "))
			conclusion = conclusion.substring(0, conclusion.length() - 1);
		conclusion += ". ";
		
		String type = "attended";
		boolean toggle = false;
		
		if (eventgoing.size() > 0)
			conclusion += wholeName + type;
		
		for (int i = 0; i < eventgoing.size(); i++) {
			toggle = true;
			conclusion += generateEvents(eventgoing.get(i));
			if (i < eventgoing.size()-2){
				if (conclusion.endsWith(" "))
					conclusion = conclusion.substring(0, conclusion.length() - 1);
				conclusion += ",";
			} else if (i == eventgoing.size() - 2)
				conclusion += "and";
		}
		
		if(conclusion.endsWith(" "))
			conclusion = conclusion.substring(0, conclusion.length() - 1);
		conclusion += ". ";
		
		type = "was interested in attending events such as";
		
		if (toggle && eventinterested.size() > 0)
			conclusion += wholeName + " was also interested in attending events such as"; 
		
		for (int i = 0; i < eventinterested.size(); i++) {
			conclusion += generateEvents(eventgoing.get(i));
			if (i < eventinterested.size() - 2) {
				if (conclusion.endsWith(" "))
					conclusion = conclusion.substring(0, conclusion.length() - 1);
				conclusion += ",";
			} else if (i == eventinterested.size() - 2)
				conclusion += "and ";
		}
		
		System.out.println(conclusion);
	}
	
	public String getConclusion() {
		return this.conclusion;
	}
	
	public String generateSentences(String type, ArrayList<Interest> interestPreferences) {
		String interests = "";
		String sentence = interestTemplate;
		
		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(interestTemplate);
		
		while(m.find()) {
			if (m.group(1).contains("interest")) {
				for (int i = 0; i < 3; i++) {				
					interests += interestPreferences.get(i).getInterest() ;
					if (i < 1)
						interests += ", ";
					else if(i == 1)
						interests += " and ";
				}				
				//interests = interests.substring(0, interests.length() - 2);				
				sentence = sentence.replace("<interest>", interests);
			}
		}
		
		return sentence;
	}

	public String generateEvents(Event event){
		String finalSentence = eventTemplate;
		String eventname = "";
		CheckIn eventloc;
		String location = "";
		boolean toggle = false;
		
		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(eventTemplate);
		
		while(m.find()) {
			if (m.group(1).contains("name")) {
				if (event.getName() != null) {
					eventname = event.getName();
					finalSentence = finalSentence.replace("<name>", eventname);
				}
			}
			
			if (m.group(1).contains("location")) {
				if (event.getLocation() != null) {
					eventloc = event.getLocation();
					
					if (eventloc.getPlace() != null) {
						location += eventloc.getPlace();
						toggle = true;
					}
					
					if (eventloc.getCity() != null) {
						if (toggle == true)
							location += " in ";
						location += eventloc.getCity();
					}
					
					if (eventloc.getCountry() != null)
						if(toggle == true && eventloc.getCountry().equals(eventloc.getCity()))
							location += ", " + eventloc.getCity();
					
					if (!toggle)
						finalSentence = finalSentence.replace(" at ", "");
					
					finalSentence = finalSentence.replace("<location>", location);
				}
			}	
		}		
		
		return finalSentence;
	}

	public String getName() {
		String wholeName = "";

		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData();
		}

		return wholeName + " ";
	}
	
	public String toPlural(String word){
		int length = word.length();
		
		if (word.endsWith("y"))
			word = word.substring(0, length - 1) + "ies";
		else if (word.endsWith("s"))
			word = word.substring(0, length - 1) + "es";
		else if (length > 3 && word.charAt(length - 1) == 's' && word.charAt(length - 2) == 'u')
			word = word.substring(0,length - 2) + "i";
		else 
			word = word.concat("s");
		
		return word;
	}
}
