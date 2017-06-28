package objects;

import java.util.ArrayList;

public class Likes {
	private String category;
	private ArrayList<String> likes;
	
	public Likes() {
		
	}
	
	public Likes(String category, ArrayList<String> likes) {
		this.category = category;
		this.likes = likes;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public ArrayList<String> getLikes() {
		return likes;
	}

	public void setLikes(ArrayList<String> likes) {
		this.likes = likes;
	}
}
