package models;

public class Story {
public static final String TABLE_STORY = "story";
	
	public static final String COL_ID = "id";
	public static final String COL_STORYINTRO = "story_intro";
	public static final String COL_STORYBODY = "story_body";
	public static final String COL_STORYCON = "story_con";
	
	private int id;
	private String storyIntro;
	private String storyBody;
	private String storyCon;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getStoryIntro() {
		return storyIntro;
	}
	
	public void setStoryIntro(String storyIntro) {
		this.storyIntro = storyIntro;
	}
	
	public String getStoryBody() {
		return storyBody;
	}
	
	public void setStoryBody(String storyBody) {
		this.storyBody = storyBody;
	}
	
	public String getStoryCon() {
		return storyCon;
	}
	
	public void setStoryCon(String storyCon) {
		this.storyCon = storyCon;
	}
}
