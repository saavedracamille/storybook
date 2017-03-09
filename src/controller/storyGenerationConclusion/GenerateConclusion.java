package controller.storyGenerationConclusion;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.DirectKnowledge;
import models.Event;
import models.Likes;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EventDAO;
import modelsDAO.LikesDAO;

public class GenerateConclusion {
	private String conclusion = "";
	private String mainTemplate = " such as <interest> ";
	
	public GenerateConclusion() {
		LikesDAO ld = new LikesDAO();
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		EventDAO ed = new EventDAO();
		
		ArrayList<DirectKnowledge> directKnowledges = dkd.getDirectKnowledge();
		ArrayList<Event> events;
		String name = "";
		String firstName = "";
		String middleName = "";
		String lastName = "";
		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null)
				firstName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null)
				middleName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null)
				lastName = directKnowledges.get(j).getData();
		}
		name = firstName + middleName + " " + lastName;
		
		ArrayList<String> topFiveTypes = ld.getTopFiveTypes();
		
		conclusion += name + " likes ";
		for (int i = 0; i < topFiveTypes.size(); i++) {
			ArrayList<Likes> topFiveInterests = ld.getTopFiveInterest(topFiveTypes.get(i));
			conclusion += toPlural(topFiveTypes.get(i));
			conclusion += generateSentences(name, topFiveTypes.get(i), topFiveInterests);
			if(i != topFiveTypes.size()-2)
				conclusion += ", ";
			else
				conclusion += "and ";
		}
		
		System.out.println(conclusion);
	}
	
	public String generateSentences(String name, String type, ArrayList<Likes> interestPreferences) {
		String interests = "";
		String sentence = mainTemplate;
		
		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(mainTemplate);
		
		while(m.find()) {
			
			if (m.group(1).contains("interest")) {
				String connector = "";
				for (int i = 0; i < 3; i++) {
					if (interestPreferences.size() - 2 != i)
						connector = ", ";
					else 
						connector = " and ";
					
					interests += interestPreferences.get(i).getInterest() + connector;
				}
				
				interests = interests.substring(0, interests.length() - 2);
				
				sentence = sentence.replace("<interest>", interests);
				sentence.replace("\\.", "");
			}
			
		}		
		return sentence;
	}

	//TODO: Add interested events.
	
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
