package controller.storyGenerationBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.ToBeProcessed;
import modelsDAO.CoLocatingWordsDAO;
import modelsDAO.PostTypeDAO;
import modelsDAO.ToBeProcessedDAO;

public class EventClassification {
	public void performEventClassification() {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		
		HashMap<String, String> verbs = tbpd.getAllVerbs();
		ArrayList<ToBeProcessed> verbPosts = tbpd.getAllPostsWithVerbs();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//		    System.out.println(entry.getKey() + " : " + entry.getValue());
//		}
		
		for (int i = 0; i < verbPosts.size(); i++)
			System.out.println("verb posts: " + verbPosts.get(i));
		
		classifyPosts(verbs, verbPosts);
	}
	
	public void classifyPosts(HashMap<String, String> verbs, ArrayList<ToBeProcessed> tbps) {
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		PostTypeDAO ptd = new PostTypeDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		ArrayList<String> clws = clwd.getAllCoLocatingWords();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//			for (int i = 0; i < clws.size(); i++) {
//				if (entry.getKey().equalsIgnoreCase(clws.get(i))) {
//					System.out.println("VERB: " + entry.getKey() + ", CLWS: " + clws.get(i));
//				}
//			}
//		}
		
		for (int i = 0; i < tbps.size(); i++) {
			for (int j = 0; j < clws.size(); j++) {
//				String post = removeSpecialCharacters(tbps.get(i).getData());
				String post = tbps.get(i).getData();
//				Pattern pt = Pattern.compile("\\:\\)|\\:\\(|<3|\\:\\/|\\:-\\/|\\:\\||\\:p");
//				Matcher match = pt.matcher(post);
//
//				while (match.find()) {
//					String s = match.group();
//					post = post.replaceAll(s, "");
//					System.out.println("POST: " + post);
//				}
				
				if (post.contains(clws.get(j))) {
					System.out.println("POST: " + post + ", CLWS: " + clws.get(j));
					int postTypeID = clwd.getPostTypeID(clws.get(j));
					tbps.get(i).setPostType(postTypeID);
				}
			}
		}
		
		tbpd.addPostType(tbps);
	}
	
	public String removeSpecialCharacters(String data) {
		Pattern pt = Pattern.compile("[^a-zA-Z0-9']");
		Matcher match = pt.matcher(data);

		while (match.find()) {
			String s = match.group();
			data = data.replaceAll("//" + s, "");
		}

		System.out.println("DATA: " + data);

		return data;
	}
}
