package models;

public class Family {
	public static final String TABLE_FAMILY = "family";
	
	public static final String COL_ID = "id";
	public static final String COL_NAME = "family_name";
	public static final String COL_RELATIONSHIP = "relationship";
	public static final String COL_FBID = "fbID";
	
	private int id;
	private String name;
	private String relationship;
	private String fbID;
	
	public Family() {
		
	}
	
	public Family(String name, String relationship) {
		this.name = name;
		this.relationship = relationship;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getRelationship() {
		return relationship;
	}
	
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
