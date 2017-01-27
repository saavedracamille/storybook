package models;

public class DirectKnowledge {
	public static final String TABLE_DK = "direct_knowledge";
	
	public static final String COL_ID = "id";
	public static final String COL_DATA = "data";
	public static final String COL_TYPE = "type";
	
	private int id;
	private String data;
	private String type;
	
	public DirectKnowledge(String data, String type) {
		this.data = data;
		this.type = type;
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
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
}
