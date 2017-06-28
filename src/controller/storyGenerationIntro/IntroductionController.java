package controller.storyGenerationIntro;

import java.util.ArrayList;
import java.util.HashMap;

import models.EducationalBackground;
import models.Family;
import models.Work;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EducationalBackgroundDAO;
import modelsDAO.FamilyDAO;
import modelsDAO.WorkDAO;
import objects.Birth;
import objects.FamilyRole;
import objects.Gender;
import objects.LivingIn;
import objects.Occupation;
import objects.Person;
import objects.Relationships;

public class IntroductionController {
	
	private DirectKnowledgeDAO dkd;
	private FamilyDAO fd;
	private WorkDAO wd;
	private EducationalBackgroundDAO ebd;
	private Person person;
	private Birth birth;
	private Gender gender;
	private LivingIn livingIn;
	private Occupation occupation;
	private Relationships relationships;
	private FamilyRole familyRole;
	private ArrayList<EducationalBackground> educationalBackground;
	private ArrayList<Work> works;
	
	public IntroductionController() {
		dkd = new DirectKnowledgeDAO();
		fd = new FamilyDAO();
		wd = new WorkDAO();
		ebd = new EducationalBackgroundDAO();
		
		initializeObjects();
	}
	
	public void initializeObjects() {
		initializePerson();
		initializeBirth();
		initializeGender();
		initializeLivingIn();
		initializeEducations();
		initializeWorks();
		initializeOccupation();
		initializeFamilyRole();
		initializeRelationships();
		
		GenerateIntro2 gi2 = new GenerateIntro2();
		gi2.birthPhrase(birth);
		gi2.educationPhrase(educationalBackground);
		gi2.genderPhrase(gender);
		gi2.locationPhrase(livingIn);
//		gi2.motherPhrase(relationships);
		gi2.occupationPhrase(occupation);
		gi2.workPharse(works);
	}
	
	public void initializePerson() {
		person = new Person();
		String fName = dkd.getSpecificDirectKnowledge("first_name");
		String mName = dkd.getSpecificDirectKnowledge("middle_name");
		String lName = dkd.getSpecificDirectKnowledge("last_name");
		
		if (fName != null && !fName.equals(""))
			person.setFirstName(fName);
		if (mName != null && !mName.equals(""))
			person.setMiddleName(mName);
		if (lName != null && !lName.equals(""))
			person.setLastName(lName);
	}
	
	public void initializeBirth() {
		birth = new Birth();
		String birthday = dkd.getSpecificDirectKnowledge("birthday");
		String birthPlace = dkd.getSpecificDirectKnowledge("hometown");
		
		if (birthday != null && !birthday.equals(""))
			birth.setBirthday(birthday);
		if (birthPlace != null && !birthPlace.equals(""))
			birth.setPlace(birthPlace);
	}
	
	public void initializeGender() {
		gender = new Gender();
		String g = dkd.getSpecificDirectKnowledge("gender");
		
		if (g != null && !g.equals(""))
			gender.setGender(g);
	}
	
	public void initializeLivingIn() {
		livingIn = new LivingIn();
		String location = dkd.getSpecificDirectKnowledge("location");
		
		if (location != null && !location.equals(""))
			livingIn.setLocation(location);
	}
	
	public void initializeEducations() {
		educationalBackground = new ArrayList<EducationalBackground> ();
		
		educationalBackground = ebd.getEducations();
	}
	
	public void initializeWorks() {
		works = new ArrayList<Work> ();
		
		works = wd.getWorks();
	}
	
	public void initializeOccupation() {
		occupation = new Occupation();
		String o = "";
		
		for (int i = 0; i < educationalBackground.size(); i++) {
			String yrGraduated = Integer.toString(educationalBackground.get(i).getYear_graduated());
			if (yrGraduated ==  null || yrGraduated.equals("") || yrGraduated.equals("0"))
				o = "student";
		}
		
		for (int j = 0; j < works.size(); j++) {
			String dateEnded = works.get(j).getDateEnded();
			if (dateEnded == null || dateEnded.equals(""))
				o = "employee";
		}
		
		if (o != null && !o.equals(""))
			occupation.setOccupation(o);
	}
	
	public void initializeFamilyRole() {
		familyRole = new FamilyRole();
		String role = "";
		
		if (gender.getGender().equals("female"))
			role = "daughter";
		else if (gender.getGender().equals("male"))
			role = "son";
		
		if (role != null && !role.equals(""))
			familyRole.setRole(role);
	}
	
	public void initializeRelationships() {
		relationships = new Relationships();
		
//		HashMap<String, ArrayList<String>> relationshipMap = new HashMap<String, ArrayList<String>> ();
//		ArrayList<Family> families = fd.getFamilies();
//		ArrayList<String> current = new ArrayList<String> ();
//		
//		for (int i = 0; i < families.size(); i++) {
//			if (relationshipMap.containsKey(families.get(i).getRelationship())) {
//				current.add(families.get(i).getName());
//				relationshipMap.put(families.get(i).getRelationship(), current);
//			} else {
//				current.add(families.get(i).getName());
//				relationshipMap.put(families.get(i).getRelationship(), current);
//			}
//		}
		
		relationships.setFamilies(fd.getFamilies());
	}
}
