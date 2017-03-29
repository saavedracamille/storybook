package controller.storyGenerationBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import models.CoLocatingWords;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.CoLocatingWordsDAO;
import modelsDAO.ToBeProcessedDAO;
import modelsDAO.VerbObjectDAO;

public class EventClassification {
	public void performEventClassification(ArrayList<ToBeProcessed> tbps) {
		VerbObjectDAO vod = new VerbObjectDAO();
		
//		HashMap<String, String> verbs = tbpd.getAllVerbs();
//		ArrayList<ToBeProcessed> verbPosts = tbpd.getAllPostsWithVerbs();
//		ArrayList<ToBeProcessed> noVerbPosts = tbpd.getAllPostsWithNoVerbs();
		HashMap<String, String> verbObjects = vod.getVerbObjectsWithVerb();
		ArrayList<VerbObject> verbObjectsNoVerb = vod.getVerbObjectsWithNoVerb();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//		    System.out.println(entry.getKey() + " : " + entry.getValue());
//		}
		
		classifyPostsWithVerbs(verbObjects);
		classifyPostsWithNoVerbs(verbObjectsNoVerb);
	}
	
	public void classifyPostsWithVerbs(HashMap<String, String> verbs) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		VerbObjectDAO vod = new VerbObjectDAO();
		ArrayList<CoLocatingWords> clws = clwd.getAllCoLocatingWords();
		
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject> ();
		
		for (Map.Entry<String, String> entry : verbs.entrySet()) {
			String postType = "";
			String[] posts = new String[verbs.entrySet().size()];
			if (entry.getValue().contains(",")) {
				posts = entry.getValue().split(", ");
			} else {
				posts[0] = entry.getValue();
			}
			System.out.println("POST 0: " + Integer.parseInt(posts[0]));
			//for (int i = 0; i < posts.length; i++) {
				ToBeProcessed tbp = tbpd.getPost(Integer.parseInt(posts[0]));
				String[] words = tbp.getData().split(" ");
					
				for (String word : words) {
					String wordCompare = word.toLowerCase();	
					
					for (int j = 0; j < clws.size(); j++) {
						if (clws.get(j).getClw().contains(" ")) {
							String[] clwsSplit = clws.get(j).getClw().toLowerCase().split(" ");
							
							for (int k = 0; k < clwsSplit.length; k++) {
								if(wordCompare.equals(clwsSplit[k]) && !postType.contains(String.valueOf(clws.get(j).getPit()))) {
									System.out.println("1APOST: " + tbp + " CLW: " + clwsSplit[k]);
					        		postType += String.valueOf(clws.get(j).getPit()) + " ";
						        }
							}
						} else {
							if(wordCompare.equals(clws.get(j).getClw().toLowerCase())) {
					        	System.out.println("2APOST: " + tbp + " CLW: " + clws.get(j).getClw());
					        	if (!postType.contains(String.valueOf(clws.get(j).getPit())))
					        		postType += String.valueOf(clws.get(j).getPit()) + " ";
					        }
						}
					}
				}
				
				if (posts.length == 1)
					verbObjects.add(new VerbObject(tbp.getId(), postType));
				else {
					for (int x = 0; x < posts.length; x++) {
						verbObjects.add(new VerbObject((tbp.getId()+x), postType));
					}
				}
			//}
		}
		
//		for (int i = 0; i < tbps.size(); i++) {
//			String verb = tbps.get(i).getVerb();
//			if (verb != null) {
//				if (!verbs.containsKey(verb))
//					verbs.put(verb, String.valueOf(tbps.get(i).getId()));
//				else {
//					String temp = verbs.get(verb) + ", " + String.valueOf(tbps.get(i).getId());
//					verbs.put(verb, temp);
//				}
//			}
//		}
//		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//		    System.out.println(entry.getKey() + " : " + entry.getValue());
//		}
		
//		String postType = "";
//		
//		for (int i = 0; i < 5; i++) {
//			for (int j = 0; j < clws.size(); j++) {
//				//String[] posts = entry.getValue().split(", ");
//			}
//		}
		
		vod.addPostType(verbObjects);
	}
	
	public void classifyPostsWithNoVerbs(ArrayList<VerbObject> tbps) {
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		VerbObjectDAO vod = new VerbObjectDAO();
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
			String[] words = tbps.get(i).getSentence().split(" ");
				
			for (String word : words) {
				String wordCompare = word.toLowerCase();	
				
				for (int j = 0; j < clws.size(); j++) {
					if (clws.get(j).getClw().contains(" ")) {
						String[] clwsSplit = clws.get(j).getClw().toLowerCase().split(" ");
						
						for (int k = 0; k < clwsSplit.length; k++) {
							if(wordCompare.equals(clwsSplit[k]) && !postType.contains(String.valueOf(clws.get(j).getPit()))) {
								System.out.println("1BPOST: " + tbps.get(i).getSentence() + " CLW: " + clwsSplit[k]);
				        		postType += String.valueOf(clws.get(j).getPit()) + " ";
					        }
						}
					} else {
						if(wordCompare.equals(clws.get(j).getClw().toLowerCase())) {
				        	System.out.println("2BPOST: " + tbps.get(i).getSentence() + " CLW: " + clws.get(j).getClw());
				        	if (!postType.contains(String.valueOf(clws.get(j).getPit())))
				        		postType += String.valueOf(clws.get(j).getPit()) + " ";
				        }
					}
				}
				
//				if (post.contains(clws.get(j))) {
//					System.out.println("POST: " + post + ", CLWS: " + clws.get(j));
//					int postTypeID = clwd.getPostTypeID(clws.get(j));
//					tbps.get(i).setPostType(postTypeID);
//				}
			}
			System.out.println("POST TYPE IS:" + postType);
			tbps.get(i).setPostType(postType);
		}
		
		vod.addPostType(tbps);
	}
}
