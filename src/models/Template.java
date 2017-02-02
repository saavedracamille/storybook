package models;

public class Template {
	public static final String TABLE_TEMPLATE = "template";
	
	public static final String COL_ID = "id";
	public static final String COL_TEMPLATE = "template";
	public static final String COL_TEMPLATEGRPID = "groupID";
	
	private int id;
	private String template;
	private String templateGrpId;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTemplate() {
		return template;
	}
	
	public void setTemplate(String template) {
		this.template = template;
	}
	
	public String getTemplateGrpId() {
		return templateGrpId;
	}
	
	public void setTemplateGrpId(String templateGrpId) {
		this.templateGrpId = templateGrpId;
	}
}