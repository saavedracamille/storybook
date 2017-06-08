package controller.storyGenerationConclusion;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.CheckIn;
import models.DirectKnowledge;
import models.Event;
import models.Likes;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EventDAO;
import modelsDAO.LikesDAO;

public class GenerateConclusion {
	private String conclusion = "";
	private String interestTemplate = " such as <interest> ";
	private String eventTemplate = " <name> at <location> ";
	
	public GenerateConclusion() {
		LikesDAO ld = new LikesDAO();
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		EventDAO ed = new EventDAO();
		
		ArrayList<DirectKnowledge> directKnowledges = dkd.getDirectKnowledge();
		String name = "";
		String firstName = "";
		String middleName = "";
		String lastName = "";
		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null)
				firstName = directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null)
				middleName = directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null)
				lastName = directKnowledges.get(j).getData();
		}
		name = firstName + middleName + lastName;
		
		ArrayList<String> topFiveTypes = ld.getTopFiveTypes();
		
		conclusion += name + " likes ";
		for (int i = 0; i < topFiveTypes.size(); i++) {
			ArrayList<Likes> topFiveInterests = ld.getTopFiveInterest(topFiveTypes.get(i));
			conclusion += toPlural(topFiveTypes.get(i));
			conclusion += generateSentences(topFiveTypes.get(i), topFiveInterests);
			if(i < topFiveTypes.size()-2){
				if(conclusion.endsWith(" ")){
					conclusion = conclusion.substring(0, conclusion.length()-1);
				}
				conclusion += ", ";
			}
			else if( i == topFiveTypes.size()-2)
				conclusion += "and ";
		}
		if(conclusion.endsWith(" ")){
			conclusion = conclusion.substring(0, conclusion.length()-1);
		}
		conclusion += ". ";
		ArrayList<Event> eventgoing = ed.getLatestGoing();	
		String type = " attended";
		boolean toggle = false;
		if(eventgoing.size() > 0)
			conclusion += name + type;
		for (int i = 0; i < eventgoing.size(); i++) {
			toggle = true;
			conclusion += generateEvents(eventgoing.get(i));
			if(i < eventgoing.size()-2){
				if(conclusion.endsWith(" ")){
					conclusion = conclusion.substring(0, conclusion.length()-1);
				}
				conclusion += ",";
			}
			else if(i == eventgoing.size()-2)
				conclusion += "and ";
		}
		if(conclusion.endsWith(" ")){
			conclusion = conclusion.substring(0, conclusion.length()-1);
		}
		conclusion += ". ";
		
		ArrayList<Event> eventinterested = ed.getLatestInterested();
		type = "was interested in attending events such as";
		if(toggle && eventinterested.size() > 0){
			conclusion += name + " was also interested in attending events such as"; 
		}
		for (int i = 0; i < eventinterested.size(); i++) {
			conclusion += generateEvents(eventgoing.get(i));
			if(i < eventinterested.size()-2){
				if(conclusion.endsWith(" ")){
					conclusion = conclusion.substring(0, conclusion.length()-1);
				}
				conclusion += ",";
			}
			else if(i == eventinterested.size()-2)
				conclusion += "and ";
		}
		System.out.println(conclusion);
	}
	
	public String getConclusion() {
		return conclusion;
	}
	
	public String generateSentences(String type, ArrayList<Likes> interestPreferences) {
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
					
					if(eventloc.getPlace() != null){
						location += eventloc.getPlace();
						toggle = true;
					}
					if(eventloc.getCity() != null){
						if(toggle == true)
							location += " in ";
						location += eventloc.getCity();
					}
					if(eventloc.getCountry() != null)
						if(toggle == true && eventloc.getCountry().equals(eventloc.getCity()))
							location += ", " + eventloc.getCity();
					if(!toggle)
						finalSentence = finalSentence.replace(" at ", "");
					finalSentence = finalSentence.replace("<location>", location);
					
				}
			}	
		}		
		
		return finalSentence;
	}
	
	
	public String toPlural(String word){
		int length = word.length();
		
		if (word.endsWith("y"))
			word = word.substring(0, length-1) + "ies";
		else if(word.endsWith("s"))
			word = word.substring(0, length-1) + "es";
		else if(length > 3 && word.charAt(length-1) == 's' && 
				word.charAt(length-2) == 'u')
				word = word.substring(0,length-2) + "i";
		else 
			word = word.concat("s"); 
		System.out.println(word);
		return word;
	}
}
