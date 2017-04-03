package models;

import java.util.Date;

public class VerbObject {
	public static final String TABLE_VO = "verb_object";
	
	public static final String COL_ID = "id";
	public static final String COL_PI = "post_id";
	public static final String COL_VERB = "verb";
	public static final String COL_NOUN = "noun";
	public static final String COL_SENTENCE = "sentence";
	public static final String COL_PT = "post_type";
	public static final String COL_TAGGED = "tagged";
	public static final String COL_LOCATION = "location";
	public static final String COL_DATE = "date";
	
	private int id;
	private int pi;
	private String verb;
	private String noun;
	private String sentence;
	private String postType;
	private String tagged;
	private String location;
	private Date date;
	
	public VerbObject(int id, String postType) {
		this.id = id;
		this.postType = postType;
	}
	
	public VerbObject(int pi, String verb, String noun, String sentence) {
		this.pi = pi;
		this.verb = verb;
		this.noun = noun;
		this.sentence = sentence;
	}
	
	public VerbObject(int id, int pi, String verb, String noun, String sentence) {
		this.id = id;
		this.pi = pi;
		this.verb = verb;
		this.noun = noun;
		this.sentence = sentence;
	}
	
	public VerbObject(int id, int pi, String postType, String tagged, String location, Date date) {
		this.id = id;
		this.pi = pi;
		this.postType = postType;
		this.tagged = tagged;
		this.location = location;
		this.date = date;
	}
	
	public VerbObject(int id, int pi, String verb, String noun, String sentence, String tagged, String location, Date date) {
		this.id = id;
		this.pi = pi;
		this.verb = verb;
		this.noun = noun;
		this.sentence = sentence;
		this.tagged = tagged;
		this.location = location;
		this.date = date;
	}
	
	public VerbObject(String location) {
		this.location = location;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getPi() {
		return pi;
	}
	
	public void setPi(int pi) {
		this.pi = pi;
	}
	
	public String getVerb() {
		return verb;
	}
	
	public void setVerb(String verb) {
		this.verb = verb;
	}
	
	public String getNoun() {
		return noun;
	}
	
	public void setNoun(String noun) {
		this.noun = noun;
	}
	
	public String getSentence() {
		return sentence;
	}
	
	public void setSentence(String sentence) {
		this.sentence = sentence;
	}

	public String getPostType() {
		return postType;
	}

	public void setPostType(String postType) {
		this.postType = postType;
	}

	public String getTagged() {
		return tagged;
	}

	public void setTagged(String tagged) {
		this.tagged = tagged;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getMonth(String month) {
        switch (month) {
            case "01": return "January";
            case "02": return "February";
            case "03": return "March";
            case "04": return "April";
            case "05": return "May";
            case "06": return "June";
            case "07": return "July";
            case "08": return "August";
            case "09": return "September";
            case "1": return "January";
            case "2": return "February";
            case "3": return "March";
            case "4": return "April";
            case "5": return "May";
            case "6": return "June";
            case "7": return "July";
            case "8": return "August";
            case "9": return "September";
            case "10": return "October";
            case "11": return "November";
            case "12": return "December";
        }
        
		return "";
	}
}
