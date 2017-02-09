package controller.storyGenerationConclusion;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.DirectKnowledge;
import models.Likes;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.LikesDAO;

public class GenerateConclusion {
	private String conclusion = "";
	private String mainTemplate = "<name> likes <type> such as <interest>.";
	
	public GenerateConclusion() {
		LikesDAO ld = new LikesDAO();
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		
		ArrayList<DirectKnowledge> directKnowledges = dkd.getDirectKnowledge();
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
		
		for (int i = 0; i < topFiveTypes.size(); i++) {
			ArrayList<Likes> topFiveInterests = ld.getTopFiveInterest(topFiveTypes.get(i));
			conclusion += generateSentences(name, topFiveTypes.get(i), topFiveInterests);
		}
		
		System.out.println(conclusion);
	}
	
	public String generateSentences(String name, String type, ArrayList<Likes> interestPreferences) {
		String interests = "";
		String sentence = mainTemplate;
		
		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(mainTemplate);
		
		while(m.find()) {
			if (m.group(1).contains("name")) {
				sentence = sentence.replace("<name>", name);
			}
			if (m.group(1).contains("type")) {
				sentence = sentence.replace("<type>", type);
			}
			if (m.group(1).contains("interest")) {
				String connector = "";
				for (int i = 0; i < interestPreferences.size(); i++) {
					if (interestPreferences.size() - 2 != i)
						connector = ", ";
					else 
						connector = " and ";
					
					interests += interestPreferences.get(i).getInterest() + connector;
				}
				
				interests = interests.substring(0, interests.length() - 2);
				
				sentence = sentence.replace("<interest>", interests);
			}
		}
		
		//TODO: Add interested events.
		
		return sentence;
	}
}
