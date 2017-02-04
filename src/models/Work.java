package models;

public class Work {
	public static final String TABLE_WORK = "work";
	
	public static final String COL_ID = "id";
	public static final String COL_INSTITUTION = "institution";
	public static final String COL_DATESTARTED = "date_started";
	public static final String COL_DATEENDED = "date_ended";
	public static final String COL_LOCATION = "location";
	public static final String COL_FBID = "fbID";
	
	private int id;
	private String institution;
	private String dateStarted;
	private String dateEnded;
	private String location;
	private String fbID;
	
	public Work() {
		
	}
	
	public Work(String institution, String dateStarted, String dateEnded, String location) {
		this.institution = institution;
		this.dateStarted = dateStarted;
		this.dateEnded = dateEnded;
		this.location = location;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getInstitution() {
		return institution;
	}
	
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	
	public String getDateStarted() {
		return dateStarted;
	}
	
	public void setDateStrated(String dateStarted) {
		this.dateStarted = dateStarted;
	}
	
	public String getDateEnded() {
		return dateEnded;
	}
	
	public void setDateEnded(String dateEnded) {
		this.dateEnded = dateEnded;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
