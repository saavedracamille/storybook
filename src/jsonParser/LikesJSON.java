package jsonParser;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.preProcessing.Preprocessing;
import models.Interest;
import models.Likes;
import modelsDAO.LikesDAO;

public class LikesJSON {
	
	private ArrayList<Likes> likes;
	
	/**
	 * Method initializes and organizes raw data into objects accordingly
	 * @param data raw data gathered about the liked pages
	 */
	public LikesJSON(JSONArray data){
		this.likes = getLikes(data);
		
		//printEverything(likes);
		addToLikesDAO(likes);
	}
	
	/**
	 * Method converts raw data into objects
	 * @param data JSON array object containing the raw data on the liked page
	 * @return Array list of Likes objects
	 */
	public ArrayList<Likes> getLikes(JSONArray data) {
		ArrayList<Likes> likes2 = new ArrayList<Likes> ();
		HashMap<String, ArrayList<Interest>> likesMap = new HashMap<String, ArrayList<Interest>> ();
		Preprocessing p = null;
		
		try {
			p = new Preprocessing();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		for (int i = 0; i < data.size(); i++) {
			JSONArray likesArray = (JSONArray) data.get(i);
			
			for (int j = 0; j < likesArray.size(); j++) {
				JSONObject l = (JSONObject) likesArray.get(j);
				ArrayList<Interest> interests = new ArrayList<Interest> ();
				Interest interest = new Interest();
				Likes like = new Likes();
				
				if(l != null) {
					String name = "";
					String category = "";
					String id = "";
					
					if (l.get("name") != null) {
						name = p.removeSpecialCharacters(l.get("name").toString());
						name = p.removeHashtags(name);
//						name = p.removeOtherShits(name);
						interest.setInterest(name);
					}
					if (l.get("category") != null) {
						category = l.get("category").toString();
						like.setType(category);
					}
					if (l.get("id") != null) {
						id = l.get("id").toString();
						interest.setFbID(id);
					}
					
					if (likesMap.containsKey(category)) {
						interests = likesMap.get(category);
						interests.add(interest);
						likesMap.put(category, interests);
					} else {
						interests.add(interest);
						likesMap.put(category, interests);
					}
				}
			}
		}
		
		for (Map.Entry<String, ArrayList<Interest>> entry : likesMap.entrySet())
			likes2.add(new Likes(entry.getKey(), entry.getValue()));
		
		return likes2;
	}
	
	/**
	 * method adds information in the object parameter to the database accordingly
	 * @param data object containing information about likes 
	 */
	public void addToLikesDAO(ArrayList<Likes> data) {
		LikesDAO ld = new LikesDAO();
		ld.addLikes(likes);
	}
	
	/**
	 * Method prints everything in the object parameter to the console.
	 * @param likes array list of likes object containing information about the liked pages 
	 */
	public void printEverything(ArrayList<Likes> likes) {
		for (int i = 0; i < likes.size(); i++) {
			for (int j = 0; j < likes.get(i).getInterest().size(); j++) {
				System.out.println("NAME: " + likes.get(i).getInterest().get(j).getInterest());
				System.out.println("CATEGORY: " + likes.get(i).getType());
				System.out.println("FB ID: " + likes.get(i).getInterest().get(j).getFbID());
			}
		}
	}
}
