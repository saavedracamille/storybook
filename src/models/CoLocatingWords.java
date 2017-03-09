package models;

public class CoLocatingWords {
	public static final String TABLE_CLW = "co_locating_words";
	
	public static final String COL_ID = "id";
	public static final String COL_WORD = "co_locating_word";
	public static final String COL_PIT = "post_type_id";
	
	private int id;
	private String clw;
	private int pit;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getPit() {
		return pit;
	}

	public void setPit(int pit) {
		this.pit = pit;
	}

	public String getClw() {
		return clw;
	}
	
	public void setClw(String clw) {
		this.clw = clw;
	}
}
