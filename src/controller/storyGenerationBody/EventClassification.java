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
	
	private HashMap<Integer, Integer> scores = new HashMap<Integer, Integer> ();
	
	public EventClassification() {
		initializeScores();
	}
	
	public void initializeScores() {
		scores.clear();
		scores.put(2, 0);
		scores.put(5, 0);
		scores.put(7, 0);
		scores.put(10, 0);
	}
	
	public void performEventClassification(ArrayList<ToBeProcessed> tbps) {
		VerbObjectDAO vod = new VerbObjectDAO();
		
//		for (Map.Entry<String, String> entry : verbs.entrySet()) {
//		    System.out.println(entry.getKey() + " : " + entry.getValue());
//		}
		classifyPosts(vod.getVerbObjects());
	}
	
	public void classifyPosts(ArrayList<VerbObject> vos) {
		CoLocatingWordsDAO clwd = new CoLocatingWordsDAO();
		VerbObjectDAO vod = new VerbObjectDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		
		ArrayList<CoLocatingWords> clws = clwd.getAllCoLocatingWords();
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject> ();
		
		for (int i = 0; i < vos.size(); i++) {
			String postType = "";
			ArrayList<String> wordsChecked = new ArrayList<String> ();
			ArrayList<String> keywordsChecked = new ArrayList<String> ();
			
			String[] words = vos.get(i).getSentence().split(" "); //each word sa post
			
			ToBeProcessed tbp = tbpd.getPost(vos.get(i).getPi());
				
			for (String word : words) {
				String wordCompare = word.toLowerCase();
				
				for (int j = 0; j < clws.size(); j++) {
					if (clws.get(j).getClw().contains(" ")) {
						String[] clwsSplit = clws.get(j).getClw().toLowerCase().split(" ");
//						
						for (int k = 0; k < clwsSplit.length; k++) {
//							if (wordCompare.equals(clwsSplit[k]) && !postType.contains(String.valueOf(clws.get(j).getPit())) && !wordsChecked.contains(wordCompare)  && !keywordsChecked.contains(clwsSplit[k])) {
							if (wordCompare.equals(clwsSplit[k]) && !wordsChecked.contains(wordCompare) && !keywordsChecked.contains(clwsSplit[k])) {	
								//System.out.println("1BPOST: " + vos.get(i).getSentence() + " CLW: " + clwsSplit[k]);
//				        		System.out.println("WORDS MATCHED: " + clwsSplit[k]);
								addScore(clws.get(j).getPit());
//								if (clws.get(j).getPit() == 2 || clws.get(j).getPit() == 5 || clws.get(j).getPit() == 7 || clws.get(j).getPit() == 10)
//									postType += String.valueOf(clws.get(j).getPit()) + " ";
//								keywordsChecked.add(clwsSplit[k]);
							}
							
						}
					} else {
						if (wordCompare.equals(clws.get(j).getClw().toLowerCase()) && !wordsChecked.contains(wordCompare) && !keywordsChecked.contains(clws.get(j).getClw().toLowerCase())) {	
							//System.out.println("2BPOST: " + vos.get(i).getSentence() + " CLW: " + clws.get(j).getClw());
//			        		System.out.println("WORDS MATCHED: " + clws.get(j).getClw());
			        		addScore(clws.get(j).getPit());
//							if (!postType.contains(String.valueOf(clws.get(j).getPit())))
//								if (clws.get(j).getPit() == 2 || clws.get(j).getPit() == 5 || clws.get(j).getPit() == 7 || clws.get(j).getPit() == 10)
//									postType += String.valueOf(clws.get(j).getPit()) + " ";
			        		keywordsChecked.add(clws.get(j).getClw().toLowerCase());
						}
					}
				}
				
				wordsChecked.add(wordCompare);
			}
			
//			System.out.println("keywords checked: " + keywordsChecked);
//			System.out.println("words checked: " + wordsChecked);
			
//			System.out.println(vos.get(i).getSentence() + "post type: " + postType);
			
			Map.Entry<Integer, Integer> maxEntry = null;
			for (Map.Entry<Integer, Integer> entry : scores.entrySet()) {
				System.out.println("key: " + entry.getKey());
				System.out.println("value: " + entry.getValue());
			    if (maxEntry == null || entry.getValue().compareTo(maxEntry.getValue()) > 0)
			        maxEntry = entry;
			}
			
			if (maxEntry.getValue() > 1) { //score of each post for a category must be at least 2pts
				postType = String.valueOf(maxEntry.getKey());
		    	//System.out.println("POST TYPE IS: " + postType);
	    	} else 
	    		postType = "0";
			
			verbObjects.add(new VerbObject(vos.get(i).getId(), tbp.getId(), postType));
			initializeScores();
		}
		
		vod.addPostType(verbObjects);
	}
	
	public void addScore(int postType) {
		if (scores.containsKey(postType)) {
			int currentScore = scores.get(postType);
			scores.put(postType, currentScore + 1);
		}
	}
}