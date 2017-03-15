package controller.storyGenerationBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.CoLocatingWords;
import models.ToBeProcessed;
import modelsDAO.CoLocatingWordsDAO;
import modelsDAO.PostTypeDAO;
import modelsDAO.ToBeProcessedDAO;

public class EventClassification {
	public void performEventClassification() {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		
		HashMap<String, String> verbs = tbpd.getAllVerbs();
		ArrayList<ToBeProcessed> verbPosts = tbpd.getAllPostsWithVerbs();
		ArrayList<ToBeProcessed> noVerbPosts = tbpd.getAllPostsWithNoVerbs();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//		    System.out.println(entry.getKey() + " : " + entry.getValue());
//		}
		
		//classifyPostsWithVerbs(verbs, verbPosts);
		classifyPostsWithNoVerbs(noVerbPosts);
	}
	
	public void classifyPostsWithVerbs(HashMap<String, String> verbs, ArrayList<ToBeProcessed> tbps) {
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		ArrayList<CoLocatingWords> clws = clwd.getAllCoLocatingWords();
		
		for (Map.Entry<String, String> entry : verbs.entrySet()) {
		    System.out.println(entry.getKey() + " : " + entry.getValue());
		    String[] posts = entry.getValue().split(", ");
			String postType = "";
			
			for (int i = 0; i < posts.length; i++) {
				for (int j = 0; j < clws.size(); j++) {
					
				}
			}
		}
	}
	
	public void classifyPostsWithNoVerbs(ArrayList<ToBeProcessed> tbps) {
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		ArrayList<CoLocatingWords> clws = clwd.getAllCoLocatingWords();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//			for (int i = 0; i < clws.size(); i++) {
//				if (entry.getKey().equalsIgnoreCase(clws.get(i))) {
//					System.out.println("VERB: " + entry.getKey() + ", CLWS: " + clws.get(i));
//				}
//			}
//		}
		
		for (int i = 0; i < tbps.size(); i++) {
			String postType = "";
			String[] words = tbps.get(i).getData().split(" ");
				
			for (String word : words) {
				String wordCompare = word.toLowerCase();	
				
				for (int j = 0; j < clws.size(); j++) {
					if (clws.get(j).getClw().contains(" ")) {
						String[] clwsSplit = clws.get(j).getClw().toLowerCase().split(" ");
						
						for (int k = 0; k < clwsSplit.length; k++) {
							if(wordCompare.equals(clwsSplit[k]) && !postType.contains(String.valueOf(clws.get(j).getPit()))) {
								//System.out.println("1POST: " + tbps.get(i).getData() + " CLW: " + clwsSplit[k]);
				        		postType += String.valueOf(clws.get(j).getPit()) + " ";
					        }
						}
					} else {
						if(wordCompare.equals(clws.get(j).getClw().toLowerCase())) {
				        	//System.out.println("2POST: " + tbps.get(i).getData() + " CLW: " + clws.get(j).getClw());
				        	if (!postType.contains(String.valueOf(clws.get(j).getPit())))
				        		postType += String.valueOf(clws.get(j).getPit()) + " ";
				        }
					}
				}
				
//				String post = removeSpecialCharacters(tbps.get(i).getData());
//				String post = tbps.get(i).getData();
//				Pattern pt = Pattern.compile("\\:\\)|\\:\\(|<3|\\:\\/|\\:-\\/|\\:\\||\\:p");
//				Matcher match = pt.matcher(post);
//
//				while (match.find()) {
//					String s = match.group();
//					post = post.replaceAll(s, "");
//					System.out.println("POST: " + post);
//				}
				
//				if (post.contains(clws.get(j))) {
//					System.out.println("POST: " + post + ", CLWS: " + clws.get(j));
//					int postTypeID = clwd.getPostTypeID(clws.get(j));
//					tbps.get(i).setPostType(postTypeID);
//				}
			}
			System.out.println("POST TYPE IS:" + postType);
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
