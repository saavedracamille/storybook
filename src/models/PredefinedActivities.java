package models;

public class PredefinedActivities {
	public static final String TABLE_PA = "predefined_activities";
	
	public static final String COL_ID = "id";
	public static final String COL_VERB = "verb";
	public static final String COL_OBJECT = "object";
	public static final String COL_TBPID = "to_be_processed_id";
	
	private int id;
	private String verb;
	private String object;
	private int tbpId;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getVerb() {
		return verb;
	}
	
	public void setVerb(String verb) {
		this.verb = verb;
	}
	
	public String getObject() {
		return object;
	}
	
	public void setObject(String object) {
		this.object = object;
	}
	
	public int getTbpId() {
		return tbpId;
	}
	
	public void setTbpId(int tbpId) {
		this.tbpId = tbpId;
	}
}
