package models;

public class TemplateGroup {
	public static final String TABLE_TEMPLATEGRP = "template_group";
	
	public static final String COL_ID = "id";
	public static final String COL_GRPNAME = "groupName";
	
	private int id;
	private String groupName;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getGroupName() {
		return groupName;
	}
	
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
}
