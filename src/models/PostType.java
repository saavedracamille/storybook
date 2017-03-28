package models;

public class PostType {
	public static final String TABLE_PT = "post_type";
	
	public static final String COL_ID = "id";
	public static final String COL_POST = "post";
	public static final String COL_VERB = "verb";
	
	private int id;
	private String post;
	private String verb;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPost() {
		return post;
	}
	
	public void setPost(String post) {
		this.post = post;
	}
	
	public String getVerb() {
		return verb;
	}
	
	public void setVerb(String verb) {
		this.verb = verb;
	}
}
