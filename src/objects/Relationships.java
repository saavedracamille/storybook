package objects;

import java.util.ArrayList;
import java.util.HashMap;

import models.Family;

public class Relationships {
	private ArrayList<Family> families = new ArrayList<Family> ();
	private ArrayList<String> names;
	private String relationship;
	
	public Relationships() {
		
	}
	
	public Relationships(ArrayList<String> names, String relationship) {
		this.names = names;
		this.relationship = relationship;
	}

	public ArrayList<String> getNames(String relationship) {
		HashMap<String, ArrayList<String>> relationshipMap = new HashMap<String, ArrayList<String>> ();
		ArrayList<String> current = new ArrayList<String> ();
		
		for (int i = 0; i < families.size(); i++) {
			current = new ArrayList<String> ();
			if (relationshipMap.containsKey(families.get(i).getRelationship())) {
				current = relationshipMap.get(families.get(i).getRelationship());
				current.add(families.get(i).getName());
				relationshipMap.put(families.get(i).getRelationship(), current);
			} else {
				current.add(families.get(i).getName());
				relationshipMap.put(families.get(i).getRelationship(), current);
			}
		}
		
		names = relationshipMap.get(relationship);
		
		return names;
	}
	
	public void setFamilies(ArrayList<Family> families) {
		this.families = families;
	}
	
	public ArrayList<Family> getFamilies() {
		return families;
	}
 
	public void setNames(ArrayList<String> names) {
		this.names = names;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
}
