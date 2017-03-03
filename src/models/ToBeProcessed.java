package models;

public class ToBeProcessed {
	public static final String TABLE_TBP = "to_be_processed";
	
	public static final String COL_ID = "id";
	public static final String COL_DATA = "data";
	public static final String COL_FBID = "fbID";
	public static final String COL_TAGGED = "tagged";
	public static final String COL_PLACE = "place";
	public static final String COL_CITY = "city";
	public static final String COL_COUNTRY = "country";
	public static final String COL_YEAR = "year";
	public static final String COL_MONTH = "month";
	public static final String COL_DAY = "day";
	
	private int id;
	private String data;
	private String fbID;
	private String tagged;
	private CheckIn checkIn;
	private String year;
	private String month;
	private String day;
	
	public ToBeProcessed() {
		
	}
	
	public ToBeProcessed(int id, String data, String fbID, String tagged, CheckIn checkIn, String year, String month, String day) {
		this.id = id;
		this.data = data;
		this.fbID = fbID;
		this.tagged = tagged;
		this.checkIn = checkIn;
		this.year = year;
		this.month = month;
		this.day = day;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getData() {
		return data;
	}
	
	public void setData(String data) {
		this.data = data;
	}
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
	
	public String getTagged() {
		return tagged;
	}
	
	public void setTagged(String tagged) {
		this.tagged = tagged;
	}
	
	public CheckIn getCheckIn() {
		return checkIn;
	}
	
	public void setCheckIn(CheckIn checkIn) {
		this.checkIn = checkIn;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
//	public void splitByDateTime(String dateTime) {
//		String[] splitByT = dateTime.split("T");
//		splitByDate(splitByT[0]);
//	}
//	
//	public void splitByDate(String date) {
//		String[] splitByDash = date.split("-");
//		this.year = splitByDash[0];
//		this.month = splitByDash[1];
//		this.day = splitByDash[2];
//	}
}
