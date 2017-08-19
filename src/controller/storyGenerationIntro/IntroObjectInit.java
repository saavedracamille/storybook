package controller.storyGenerationIntro;

import java.util.ArrayList;
import models.EducationalBackground;
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

public class IntroObjectInit {
	
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
	
	/**
	 * initializes DAOs
	 */	
	public IntroObjectInit() {
		dkd = new DirectKnowledgeDAO();
		fd = new FamilyDAO();
		wd = new WorkDAO();
		ebd = new EducationalBackgroundDAO();
		
		initializeObjects();
	}
	
	/**
	 * initializes objects
	 */	
	public void initializeObjects() {
		initializePerson();
		initializeBirth();
		initializeGender();
		initializeLivingIn();
		initializeEducations();
		initializeWorks();
		/*initializeOccupation();*/
		initializeFamilyRole();
		initializeRelationships();
		
		generateIntroduction();
	}
	
	/**
	 * initializes and calls generateIntroduction to create an introductory paragraph
	 * @returns introductory paragraph
	 */	
	public String generateIntroduction() {
		String introduction = "";
		
		GenerateIntro2 gi2 = new GenerateIntro2();
		introduction = gi2.generateIntroduction(this);
//		gi2.familyRolePhrase(familyRole);
//		gi2.birthPhrase(birth);
//		gi2.educationPhrase(educationalBackground);
//		gi2.genderPhrase(gender);
//		gi2.locationPhrase(livingIn);
//		gi2.motherPhrase(relationships);
//		gi2.occupationPhrase(occupation);
//		gi2.workPharse(works);
		
		return introduction;
	}
	
	public String getPersonName() {
		return person.getName();
	}

	public Birth getBirth() {
		return birth;
	}

	public Gender getGender() {
		return gender;
	}

	public LivingIn getLivingIn() {
		return livingIn;
	}

	public Occupation getOccupation() {
		return occupation;
	}
	
	public Relationships getRelationships() {
		return relationships;
	}

	public FamilyRole getFamilyRole() {
		return familyRole;
	}

	public ArrayList<EducationalBackground> getEducationalBackground() {
		return educationalBackground;
	}

	public ArrayList<Work> getWorks() {
		return works;
	}
	
	/**
	 * initializes the whole name of the person
	 */	
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
	
	/**
	 * initializes the birth information
	 */	
	public void initializeBirth() {
		birth = new Birth();
		String birthday = dkd.getSpecificDirectKnowledge("birthday");
		String birthPlace = dkd.getSpecificDirectKnowledge("hometown");
		
		if (birthday != null && !birthday.equals(""))
			birth.setBirthday(birthday);
		if (birthPlace != null && !birthPlace.equals(""))
			birth.setPlace(birthPlace);
	}
	
	/**
	 * initializes the gender role
	 */	
	public void initializeGender() {
		String g = dkd.getSpecificDirectKnowledge("gender");
		gender = new Gender(g);
	}
	
	/**
	 * initializes the location currently living in
	 */	
	public void initializeLivingIn() {
		livingIn = new LivingIn();
		String location = dkd.getSpecificDirectKnowledge("location");
		
		if (location != null && !location.equals(""))
			livingIn.setLocation(location);
	}
	
	/**
	 * initializes the array list of educational backgrounds
	 */	
	public void initializeEducations() {
		educationalBackground = new ArrayList<EducationalBackground> ();
		educationalBackground = ebd.getEducations();
	}

	/**
	 * initializes the array list of working backgrounds
	 */	
	public void initializeWorks() {
		works = new ArrayList<Work> ();
		works = wd.getWorks();
	}
	
	/*public void initializeOccupation() {
		occupation = new Occupation();
		String o = "";
		
		if (educationalBackground.size() != 0) {
			String yrGraduated = Integer.toString(educationalBackground.get(0).getYear_graduated());
			if (yrGraduated ==  null || yrGraduated.equals("") || yrGraduated.equals("0"))
				o = "student";
		}

		if (works.size() != 0) {
			String dateEnded = works.get(0).getDateEnded();
			if (dateEnded == null || dateEnded.equals(""))
				o = "employee";
		}
		
		if (o != null && !o.equals(""))
			occupation.setOccupation(o);
	}
*/	
	

	/**
	 * initializes the role in family
	 */	
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
	

	/**
	 * initializes the relationships
	 */	
	public void initializeRelationships() {
		relationships = new Relationships();
		relationships.setFamilies(fd.getFamilies());
	}
}
