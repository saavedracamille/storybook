package models;

public class Event {
	public static final String TABLE_EVENT = "event";
	
	public static final String COL_NAME = "name";
	public static final String COL_RSVP = "rsvp_status";
	public static final String COL_PLACE = "place";
	public static final String COL_CITY = "city";
	public static final String COL_COUNTRY = "country";
	public static final String COL_FBID = "fbID";
	
	private String name;
	private String rsvp_status;
	private CheckIn location;
	private String fbID;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getRsvp_status() {
		return rsvp_status;
	}
	
	public void setRsvp_status(String rsvp_status) {
		this.rsvp_status = rsvp_status;
	}
	
	public CheckIn getLocation() {
		return location;
	}
	
	public void setLocation(CheckIn location) {
		this.location = location;
	}
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
