package controller.storyGenerationBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.CheckIn;
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
			
			ToBeProcessed tbp = tbpd.getPost(vos.get(i).getPi());
			String[] words = vos.get(i).getSentence().split(" "); //each word sa post
				
			for (String word : words) {
				String wordCompare = word.toLowerCase();
				
				for (int j = 0; j < clws.size(); j++) {
					if (clws.get(j).getClw().contains(" ")) {
						String[] clwsSplit = clws.get(j).getClw().toLowerCase().split(" ");
						
						for (int k = 0; k < clwsSplit.length; k++) {
							if (wordCompare.equals(clwsSplit[k]) && !postType.contains(String.valueOf(clws.get(j).getPit()))) {
								//System.out.println("1BPOST: " + vos.get(i).getSentence() + " CLW: " + clwsSplit[k]);
				        		addScore(clws.get(j).getPit());
//								postType += String.valueOf(clws.get(j).getPit()) + " ";
					        }
						}
					} else {
						if (wordCompare.equals(clws.get(j).getClw().toLowerCase())) {
				        	//System.out.println("2BPOST: " + vos.get(i).getSentence() + " CLW: " + clws.get(j).getClw());
				        	if (!postType.contains(String.valueOf(clws.get(j).getPit()))) {
				        		addScore(clws.get(j).getPit());
//				        		postType += String.valueOf(clws.get(j).getPit()) + " ";
				        	}
				        }
					}
				}
			}
			
			Map.Entry<Integer, Integer> maxEntry = null;
			for (Map.Entry<Integer, Integer> entry : scores.entrySet())
			    if (maxEntry == null || entry.getValue().compareTo(maxEntry.getValue()) > 0)
			        maxEntry = entry;
			
			if (maxEntry.getValue() > 1) { //score of each post for a category must be at least 2pts
				postType = String.valueOf(maxEntry.getKey());
		    	System.out.println("POST TYPE IS: " + postType);
	    	} else 
	    		postType = "0";
			
			verbObjects.add(addDetailsToVerbObject(postType, tbp, vos.get(i).getId()));
			initializeScores();
		}
		
		vod.addPostType(verbObjects);
	}
	
	public VerbObject addDetailsToVerbObject(String postType, ToBeProcessed tbp, int voID) {
		String tagged = tbp.getTagged();
		String month = tbp.getMonth();
		String day = tbp.getDay();
		String year = tbp.getYear();
		CheckIn checkIn = tbp.getCheckIn();
		String place = checkIn.getPlace();
		String city = checkIn.getCity();
		String country = checkIn.getCountry();
		
		String with = "";
		String at = "";
		if (tagged != null && !tagged.equals("") && !tagged.isEmpty())
			with += "with " + tagged;
		if (place != null && !tagged.isEmpty())
			at += "at " + place;
		if (city != null && !tagged.isEmpty())
			at += ", " + city;
		if (country != null && !tagged.isEmpty())
			at += ", " + country;
		
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        Date date = null;
		try {
			date = formatter.parse(month + "/" + day + "/" + year);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        
        VerbObject vo = new VerbObject(voID, tbp.getId(), postType, with, at, date);
		
		return vo;
	}
	
	public void addScore(int postType) {
		if (scores.containsKey(postType)) {
			int currentScore = scores.get(postType);
			scores.put(postType, currentScore + 1);
		}
	}
	
	public void addScoreNER(String ner) {
		int currentScore = 0;
		
		switch (ner) {
		case "LOCATION": 
			currentScore = scores.get(10);
			scores.put(10, currentScore + 1);
			
			currentScore = scores.get(5);
			scores.put(5, currentScore + 1);
			
			break;
		
		case "PERSON": 
			currentScore = scores.get(2);
			scores.put(2, currentScore + 1);
			
			break;
		}
	}
}