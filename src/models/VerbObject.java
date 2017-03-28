package models;

public class VerbObject {
	public static final String TABLE_VO = "verb_object";
	
	public static final String COL_ID = "id";
	public static final String COL_PI = "post_id";
	public static final String COL_VERB = "verb";
	public static final String COL_NOUN = "noun";
	public static final String COL_SENTENCE = "sentence";
	public static final String COL_PT = "post_type";
	
	private int id;
	private int pi;
	private String verb;
	private String noun;
	private String sentence;
	private String postType;
	
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
}
