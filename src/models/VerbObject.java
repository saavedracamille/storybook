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
}
