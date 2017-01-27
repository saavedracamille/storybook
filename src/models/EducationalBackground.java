package models;

public class EducationalBackground {
	public static final String TABLE_EB = "educational_bg";
	
	public static final String COL_ID = "id";
	public static final String COL_INSTITUTION = "institution";
	public static final String COL_TYPE = "type";
	public static final String COL_YRGRAD = "yr_graduated";
	public static final String COL_COURSE = "course";
	public static final String COL_FBID = "fbID";
	
	private int id;
	private String institution;
	private String type;
	private int year_graduated;
	private String course;
	private String fbID;
	
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
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public int getYear_graduated() {
		return year_graduated;
	}
	
	public void setYear_graduated(int year_graduated) {
		this.year_graduated = year_graduated;
	}
	
	public String getCourse() {
		return course;
	}
	
	public void setCourse(String course) {
		this.course = course;
	}	
	
	public String getFbID() {
		return fbID;
	}
	
	public void setFbID(String fbID) {
		this.fbID = fbID;
	}
}
