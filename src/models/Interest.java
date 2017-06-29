package models;

public class Interest {
	public static final String TABLE_LIKES = "likes";
	
	public static final String COL_ID = "id";
	public static final String COL_INTEREST = "interest";
	public static final String COL_TYPE = "type";
	public static final String COL_FBID = "fbID";
	
	private int id;
	private String interest;
	private String fbID;
	
	public Interest() {
		
	}
	
	public Interest(String interest) {
		this.interest = interest;
	}
	
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
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
