package models;

public class PostType {
	public static final String TABLE_PT = "post_type";
	
	public static final String COL_ID = "id";
	public static final String COL_POST = "post";
	
	private int id;
	private String post;
	
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
}
