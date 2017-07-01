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
		setDateStarted(dateStarted);
		setDateEnded(dateEnded);
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
	
	public void setDateStarted(String dateStarted) {
		if (dateStarted != null || !("").equals(dateStarted)) {
			String[] date = null;
			String month = "";
			String day = "";
			String year = "";
			
			if (dateStarted.contains("\\/")) {
				date = dateStarted.split("\\/");
				month = getMonth(date[0]);
				day = date[1];
				year = date[2];
			} else if (dateStarted.contains("-")) {
				date = dateStarted.split("-");
				month = getMonth(date[1]);
				day = date[2];
				year = date[0];
			}
			
			this.dateStarted = month + " " + day + ", " + year;
		} else
			this.dateStarted = dateStarted;
	}
	
	public String getDateEnded() {
		return dateEnded;
	}
	
	public void setDateEnded(String dateEnded) {
		if (dateEnded != null || !("").equals(dateEnded)) {
			String[] date = null;
			String month = "";
			String day = "";
			String year = "";
			
			if (dateEnded.contains("\\/")) {
				date = dateEnded.split("\\/");
				month = getMonth(date[0]);
				day = date[1];
				year = date[2];
			} else if (dateEnded.contains("-")) {
				date = dateEnded.split("-");
				month = date[1];
				day = date[2];
				year = date[0];
			}
	
			this.dateEnded = month + " " + day + ", " + year;
		} else
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
	
	public String getMonth(String m) {
		switch (m) {
			case "01": return "January";
			case "02": return "February";
			case "03": return "March";
			case "04": return "April";
			case "05": return "May";
			case "06": return "June";
			case "07": return "July";
			case "08": return "August";
			case "09": return "September";
			case "10": return "October";
			case "11": return "November";
			case "12": return "December";
		}

		return "month";
	}
}
