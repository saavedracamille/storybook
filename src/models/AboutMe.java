package models;

import java.util.ArrayList;

public class AboutMe {
	private String birthday;
	private String firstName;
	private String middleName;
	private String lastName;
	private String gender;
	private ArrayList<EducationalBackground> educations;
	private ArrayList<Family> families;
	private String location;
	private String hometown;
	
	public String getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getMiddleName() {
		return middleName;
	}
	
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public ArrayList<EducationalBackground> getEducations() {
		return educations;
	}
	
	public void setEducations(ArrayList<EducationalBackground> educations) {
		this.educations = educations;
	}
	
	public ArrayList<Family> getFamilies() {
		return families;
	}
	
	public void setFamilies(ArrayList<Family> families) {
		this.families = families;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getHometown() {
		return hometown;
	}
	
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
}
