package models;

import java.util.ArrayList;

public class Likes {
	
	private ArrayList<Interest> interest;
	private String type;
	
	public Likes() {
		
	}
	
	public Likes(String type, ArrayList<Interest> interest) {
		this.type = type;
		this.interest = interest;
	}
	
	public ArrayList<Interest> getInterest() {
		return interest;
	}
	
	public void setInterest(ArrayList<Interest> interest) {
		this.interest = interest;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
}
