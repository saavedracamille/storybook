package jsonParser;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import models.AboutMe;
import models.DirectKnowledge;
import models.EducationalBackground;
import models.Family;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EducationalBackgroundDAO;
import modelsDAO.FamilyDAO;

public class AboutMeJSON {

	private AboutMe aboutMe;

	public AboutMeJSON(JSONObject something, JSONArray family) {
		aboutMe = new AboutMe();
		
		if (something.get("birthday") != null)
			aboutMe.setBirthday(something.get("birthday").toString());
		if (something.get("first_name") != null)
			aboutMe.setFirstName(something.get("first_name").toString());
		if (something.get("middle_name") != null)
			aboutMe.setMiddleName(something.get("middle_name").toString());
		if (something.get("last_name") != null)
			aboutMe.setLastName(something.get("last_name").toString());
		if (something.get("gender") != null)
			aboutMe.setGender(something.get("gender").toString());
		aboutMe.setEducations(getEducations((JSONArray) something.get("education")));
		aboutMe.setFamilies(getFamilies(family));
		aboutMe.setLocation(getLocation((JSONObject) something.get("location")));
		aboutMe.setHometown(getHometown((JSONObject) something.get("hometown")));
		
		//printEverything(aboutMe);
		addToDKDAO(aboutMe);
	}

	public ArrayList<EducationalBackground> getEducations(JSONArray data) {
		ArrayList<EducationalBackground> educations = new ArrayList<EducationalBackground>();
		
		if (data.size() != 0) {
			for (int i = 0; i < data.size(); i++) {
				EducationalBackground eb = new EducationalBackground();
				
				JSONObject education = (JSONObject) data.get(i);
				
				JSONObject school = (JSONObject) education.get("school");
				if (school != null) {
					String institution = "";
					String type = "";
					if (school.get("name") != null)
						institution = school.get("name").toString();
					if (school.get("type") != null)
						type = education.get("type").toString();
					
					JSONObject year = (JSONObject) education.get("year");
					if (year != null) {
						int yrGraduated = Integer.parseInt(year.get("name").toString());
						eb.setYear_graduated(yrGraduated);
					}
	
					eb.setInstitution(institution);
					eb.setType(type);
				}
				
				
				JSONArray concentrations = (JSONArray) education.get("concentration");
				if (concentrations != null) {
					for (int j = 0; j < concentrations.size(); j++) {
						JSONObject concentration = (JSONObject) concentrations.get(j);
						if (concentration.get("name") != null) {
							String course = concentration.get("name").toString();
							eb.setCourse(course);
						}
					}
				}
	
				educations.add(eb);
			}
		}
		return educations;
	}

	public ArrayList<Family> getFamilies(JSONArray data) {
		ArrayList<Family> families = new ArrayList<Family>();
		
		for (int i = 0; i < data.size(); i++) {
			JSONArray familyMemberArray = (JSONArray) data.get(i);
			
			for (int j = 0; j < familyMemberArray.size(); j++) {
				Family fam = new Family();
				JSONObject familyMember = (JSONObject) familyMemberArray.get(j);
				
				if (familyMember != null) {
					String name = familyMember.get("name").toString();
					String relationship = familyMember.get("relationship").toString();
					
					fam.setName(name);
					fam.setRelationship(relationship);
				}
				
				families.add(fam);
			}
		}

		return families;
	}
	
	public String getLocation(JSONObject location) {
		String name = "";
		
		if (location != null)
			name = location.get("name").toString();
		
		return name;
	}
	
	public String getHometown(JSONObject hometown) {
		String name = "";
		
		if (hometown != null)
			name = hometown.get("name").toString();
		
		return name;
	}
	
	public void addToDKDAO(AboutMe aboutMe) {
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		FamilyDAO fd = new FamilyDAO();
		EducationalBackgroundDAO ebd = new EducationalBackgroundDAO();
		
		ArrayList<DirectKnowledge> dks = new ArrayList<DirectKnowledge> ();
		ArrayList<EducationalBackground> educations = new ArrayList<EducationalBackground> ();
		ArrayList<Family> families = new ArrayList<Family> ();
		
		dks.add(new DirectKnowledge(aboutMe.getBirthday(), "birthday"));
		dks.add(new DirectKnowledge(aboutMe.getFirstName(), "first_name"));
		dks.add(new DirectKnowledge(aboutMe.getMiddleName(), "middle_name"));
		dks.add(new DirectKnowledge(aboutMe.getLastName(), "last_name"));
		dks.add(new DirectKnowledge(aboutMe.getLocation(), "location"));
		dks.add(new DirectKnowledge(aboutMe.getHometown(), "hometown"));
		for (int i = 0; i < aboutMe.getEducations().size(); i++) {
			educations.add(aboutMe.getEducations().get(i));
		}
		for (int j = 0; j < aboutMe.getFamilies().size(); j++) {
			families.add(aboutMe.getFamilies().get(j));
		}
		
		dkd.addDirectKnowledge(dks);
		fd.addFamily(families);
		ebd.AddEducationalBackground(educations);
	}
	
	public void printEverything(AboutMe aboutMe) {
		System.out.println("BIRTHDAY: " + aboutMe.getBirthday());
		System.out.println("FIRST NAME: " + aboutMe.getFirstName());
		System.out.println("MIDDLE NAME: " + aboutMe.getMiddleName());
		System.out.println("LAST NAME: " + aboutMe.getLastName());
		System.out.println("GENDER: " + aboutMe.getGender());
		System.out.println("LOCATION: " + aboutMe.getLocation());
		System.out.println("HOMETOWN: " + aboutMe.getHometown());
		for (int i = 0; i < aboutMe.getEducations().size(); i++) {
			System.out.println("INSTITUTION: " + aboutMe.getEducations().get(i).getInstitution());
			System.out.println("TYPE: " + aboutMe.getEducations().get(i).getType());
			System.out.println("YEAR: " + aboutMe.getEducations().get(i).getYear_graduated());
			System.out.println("COURSE: " + aboutMe.getEducations().get(i).getCourse());
		}
		for (int j = 0; j < aboutMe.getFamilies().size(); j++) {
			System.out.println("NAME: " + aboutMe.getFamilies().get(j).getName());
			System.out.println("RELATIONSHIP: " + aboutMe.getFamilies().get(j).getRelationship());
		}
	}
}
