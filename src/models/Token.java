package models;

public class Token {
	public static final String TABLE_TOKEN = "token";
	
	public static final String COL_ID = "id";
	public static final String COL_NAME = "name";
	public static final String COL_POSID = "part_of_speech_id";
	public static final String COL_TBPID = "to_be_processed_id";
	
	private int id;
	private String name;
	private int posID;
	private int tbpID;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getPosID() {
		return posID;
	}
	
	public void setPosID(int posID) {
		this.posID = posID;
	}
	
	public int getTbpID() {
		return tbpID;
	}
	
	public void setTbpID(int tbpID) {
		this.tbpID = tbpID;
	}
}
