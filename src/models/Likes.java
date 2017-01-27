package models;

public class Likes {
	public static final String TABLE_LIKES = "likes";
	
	public static final String COL_ID = "id";
	public static final String COL_INTEREST = "interest";
	public static final String COL_TYPE = "type";
	public static final String COL_FBID = "fbID";
	
	private int id;
	private String interest;
	private String type;
	private String fbID;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getInterest() {
		return interest;
	}
	
	public void setInterest(String interest) {
		this.interest = interest;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
