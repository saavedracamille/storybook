package jsonParser;

import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.preProcessing.Preprocessing;
import models.Likes;
import modelsDAO.LikesDAO;

public class LikesJSON {
	
	private ArrayList<Likes> likes;
	
	public LikesJSON(JSONArray data){
		this.likes = getLikes(data);
		
		//printEverything(likes);
		addToLikesDAO(likes);
	}
	
	public ArrayList<Likes> getLikes(JSONArray data) {
		ArrayList<Likes> likes = new ArrayList<Likes> ();
		Preprocessing p = null;
		try {
			p = new Preprocessing();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		for (int i = 0; i < data.size(); i++) {
			JSONArray likesArray = (JSONArray) data.get(i);
			
			for (int j = 0; j < likesArray.size(); j++) {
				Likes like = new Likes();
				JSONObject l = (JSONObject) likesArray.get(j);
				
				if(l != null) {
					String name = "";
					String category = "";
					String id = "";
					
					if (l.get("name") != null) {
						name = p.removeSpecialCharacters(l.get("name").toString());
						like.setInterest(name);
					}
					if (l.get("category") != null) {
						category = l.get("category").toString();
						like.setType(category);
					}
					if (l.get("id") != null) {
						id = l.get("id").toString();
						like.setFbID(id);
					}
					
					likes.add(like);
				}
			}
		}
		
		return likes;
	}
	
	public void addToLikesDAO(ArrayList<Likes> data) {
		LikesDAO ld = new LikesDAO();
		ld.addLikes(likes);
	}
	
	public void printEverything(ArrayList<Likes> likes) {
		for (int i = 0; i < likes.size(); i++) {
			System.out.println("NAME: " + likes.get(i).getInterest());
			System.out.println("CATEGORY: " + likes.get(i).getType());
			System.out.println("FB ID: " + likes.get(i).getFbID());
		}
	}
}
