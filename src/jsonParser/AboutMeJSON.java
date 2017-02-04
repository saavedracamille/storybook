package jsonParser;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import models.AboutMe;
import models.DirectKnowledge;
import models.EducationalBackground;
import models.Family;
import models.Work;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EducationalBackgroundDAO;
import modelsDAO.FamilyDAO;
import modelsDAO.WorkDAO;

public class AboutMeJSON {

	private AboutMe aboutMe;

	public AboutMeJSON(JSONObject data, JSONArray family) {
		aboutMe = new AboutMe();
		
		if (data.get("birthday") != null)
			aboutMe.setBirthday(data.get("birthday").toString());
		if (data.get("first_name") != null)
			aboutMe.setFirstName(data.get("first_name").toString());
		if (data.get("middle_name") != null)
			aboutMe.setMiddleName(data.get("middle_name").toString());
		if (data.get("last_name") != null)
			aboutMe.setLastName(data.get("last_name").toString());
		if (data.get("gender") != null)
			aboutMe.setGender(data.get("gender").toString());
		aboutMe.setEducations(getEducations((JSONArray) data.get("education")));
		aboutMe.setFamilies(getFamilies(family));
		aboutMe.setLocation(getLocation((JSONObject) data.get("location")));
		aboutMe.setHometown(getHometown((JSONObject) data.get("hometown")));
		aboutMe.setWorks(getWorks((JSONArray) data.get("work")));
		
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
					String fbID = "";
					
					if (school.get("name") != null)
						institution = school.get("name").toString();
					if (education.get("type") != null)
						type = education.get("type").toString();
					if (school.get("id") != null)
						fbID = school.get("id").toString();
					
					JSONObject year = (JSONObject) education.get("year");
					if (year != null) {
						int yrGraduated = Integer.parseInt(year.get("name").toString());
						eb.setYear_graduated(yrGraduated);
					}
	
					eb.setInstitution(institution);
					eb.setType(type);
					eb.setFbID(fbID);
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
					String fbID = familyMember.get("id").toString();
					
					fam.setName(name);
					fam.setRelationship(relationship);
					fam.setFbID(fbID);
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
	
	public ArrayList<Work> getWorks(JSONArray data) {
		ArrayList<Work> works = new ArrayList<Work>();
		
		if (data.size() != 0) {
			for (int i = 0; i < data.size(); i++) {
				Work work = new Work();
				
				JSONObject w = (JSONObject) data.get(i);
				if (w != null) {
					String startDate = w.get("start_date").toString();
					String endDate = w.get("end_date").toString();
					
					JSONObject employer = (JSONObject) w.get("employer");
					if (employer != null) {
						String employerName = employer.get("name").toString();
						work.setInstitution(employerName);
					}
					
					JSONObject location = (JSONObject) w.get("location");
					if (location != null) {
						String locationName = location.get("name").toString();
						work.setLocation(locationName);
					}
					
					String fbID = w.get("id").toString();
					
					work.setDateStrated(startDate);
					work.setDateEnded(endDate);
					work.setFbID(fbID);
				}
				
				works.add(work);
			}
		}
				
		return works;
	}
	
	public void addToDKDAO(AboutMe aboutMe) {
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		FamilyDAO fd = new FamilyDAO();
		EducationalBackgroundDAO ebd = new EducationalBackgroundDAO();
		WorkDAO wd = new WorkDAO();
		
		ArrayList<DirectKnowledge> dks = new ArrayList<DirectKnowledge> ();
		ArrayList<EducationalBackground> educations = aboutMe.getEducations();
		ArrayList<Family> families = aboutMe.getFamilies();
		ArrayList<Work> works = aboutMe.getWorks();
		
		dks.add(new DirectKnowledge(aboutMe.getBirthday(), "birthday"));
		dks.add(new DirectKnowledge(aboutMe.getFirstName(), "first_name"));
		dks.add(new DirectKnowledge(aboutMe.getMiddleName(), "middle_name"));
		dks.add(new DirectKnowledge(aboutMe.getLastName(), "last_name"));
		dks.add(new DirectKnowledge(aboutMe.getGender(), "gender"));
		dks.add(new DirectKnowledge(aboutMe.getLocation(), "location"));
		dks.add(new DirectKnowledge(aboutMe.getHometown(), "hometown"));
		
		dkd.addDirectKnowledge(dks);
		fd.addFamilies(families);
		ebd.AddEducationalBackground(educations);
		wd.addWorks(works);
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
			System.out.println("FB ID: " + aboutMe.getEducations().get(i).getFbID());
		}
		for (int j = 0; j < aboutMe.getFamilies().size(); j++) {
			System.out.println("NAME: " + aboutMe.getFamilies().get(j).getName());
			System.out.println("RELATIONSHIP: " + aboutMe.getFamilies().get(j).getRelationship());
			System.out.println("FB ID: " + aboutMe.getFamilies().get(j).getFbID());
		}
		for (int k = 0; k < aboutMe.getWorks().size(); k++) {
			System.out.println("INSTITUTION: " + aboutMe.getWorks().get(k).getInstitution());
			System.out.println("START DATE: " + aboutMe.getWorks().get(k).getDateStarted());
			System.out.println("START DATE: " + aboutMe.getWorks().get(k).getDateEnded());
			System.out.println("LCOATION: " + aboutMe.getWorks().get(k).getLocation());
			System.out.println("FB ID: " + aboutMe.getWorks().get(k).getFbID());
		}
	}
}
