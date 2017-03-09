package controller.storyGenerationIntro;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.DirectKnowledge;
import models.EducationalBackground;
import models.Family;
import models.Work;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EducationalBackgroundDAO;
import modelsDAO.FamilyDAO;
import modelsDAO.TemplateDAO;
import modelsDAO.TemplateGroupDAO;
import modelsDAO.WorkDAO;

public class GenerateIntro {

	private String introduction = "";
	private static ArrayList<String> mainTemplate = new ArrayList<String>();
	private static ArrayList<String> checkColumn = new ArrayList<String>();
	private ArrayList<DirectKnowledge> directKnowledges = new ArrayList<DirectKnowledge>();
	private ArrayList<EducationalBackground> educationalBgs = new ArrayList<EducationalBackground>();
	private ArrayList<Family> families = new ArrayList<Family>();
	private ArrayList<Work> works = new ArrayList<Work>();

	public GenerateIntro() {
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		EducationalBackgroundDAO ebd = new EducationalBackgroundDAO();
		FamilyDAO fd = new FamilyDAO();
		WorkDAO wd = new WorkDAO();

		mainTemplate.add("<name>");
		mainTemplate.add("<intro_birthday>");
		mainTemplate.add("<intro_education_gs>");
		mainTemplate.add("<intro_education_hs>");
		mainTemplate.add("<intro_education_college>");
		mainTemplate.add("<intro_current_work>");
		mainTemplate.add("<location, hometown>");
		mainTemplate.add("<intro_family>");

		checkColumn.add("birthday");
		checkColumn.add("education");
		checkColumn.add("work");
		checkColumn.add("location");
		checkColumn.add("hometown");
		checkColumn.add("family");

		this.directKnowledges = dkd.getDirectKnowledge();
		this.educationalBgs = ebd.getEducations();
		this.families = fd.getFamilies();
		this.works = wd.getWorks();

		introduction = generateSentences();
		System.out.println(introduction);
	}

	public String generateSentences() {
		String firstSentence = "";
		String firstName = "";
		String middleName = "";
		String lastName = "";
		String gender = "";

		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();

		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null)
				firstName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null)
				middleName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null)
				lastName = directKnowledges.get(j).getData();
			if(directKnowledges.get(j).getType().equals("gender") && directKnowledges.get(j).getData() != null)
				if(directKnowledges.get(j).getData().equals("female"))
					gender = "She";
				else
					gender = "He";
					
		}

		firstSentence += firstName + middleName + " " + lastName;

		for (int i = 1; i < mainTemplate.size(); i++) {
			ArrayList<String> possbileTemplates = new ArrayList<String>();
			int groupId = 0;
			String groupName = "";
			String production = mainTemplate.get(i);
			production = production.replace(">", "");
			production = production.replace("<", "");

			//System.out.println(production);

			if (!mainTemplate.get(i).contains(",")) {
				groupId = tgd.getGroupId(production);
				groupName = getColumn(production);

				possbileTemplates = td.getTemplates(groupId, groupName);
			} else {
				groupId = tgd.getGroupId(production);
				groupName = getColumn(production);

				possbileTemplates.addAll(td.getTemplates(groupId, groupName));
				
				String[] locationHometown = production.split(", ");
				
				for (int j = 0; j < locationHometown.length; j++) {
					groupId = tgd.getGroupId("intro_"+locationHometown[j]);
					groupName = getColumn("intro_"+locationHometown[j]);

					possbileTemplates.addAll(td.getTemplates(groupId, groupName));
				}
			}

			switch (i) {
			case 1:
				if(!finalTemplateForBirthday(possbileTemplates).contains(",")){
					firstSentence += " ";
				}
				firstSentence += finalTemplateForBirthday(possbileTemplates);
				firstSentence = replaceContentBirthday(firstSentence);
				if(!finalTemplateForBirthday(possbileTemplates).isEmpty() && !firstSentence.endsWith(","))
					firstSentence += ".";
				break;

			case 2:
				
				if(firstSentence.endsWith(".") && !finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty()){
					firstSentence += " " + gender + " ";
				}
				
				firstSentence += finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i)));
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));
				
				if(!finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty())
					firstSentence += ".";
				
				break;

			case 3:
				if(firstSentence.endsWith(".") && !finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty()){
					firstSentence += " " + gender + " ";
				}
				
				firstSentence += finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i)));
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));
				
				if(!finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty())
					firstSentence += ".";
				
				break;

			case 4:
				if(firstSentence.endsWith(".") && !finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty()){
					firstSentence += " " + gender + " ";
				}
				firstSentence += finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i)));
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));
				
				if(!finalTemplateForEducation(possbileTemplates, getEducationType(mainTemplate.get(i))).isEmpty())
					firstSentence += ".";
				
				break;

			case 5:
				if(firstSentence.endsWith(".") && !finalTemplateForWork(possbileTemplates).isEmpty()){
					firstSentence += " " + gender + " ";
				}
				firstSentence += finalTemplateForWork(possbileTemplates);
				firstSentence = replaceContentWork(firstSentence);
				if(!finalTemplateForWork(possbileTemplates).isEmpty())
					firstSentence += ".";
				
				break;

			case 6:
				if(firstSentence.endsWith(".") && !finalTemplateForLocHome(possbileTemplates).isEmpty()){
					firstSentence += " " + gender + " ";
				}
				firstSentence += finalTemplateForLocHome(possbileTemplates);
				firstSentence = replaceContentLocHome(firstSentence);
				if(!finalTemplateForLocHome(possbileTemplates).isEmpty())
					firstSentence += ".";
				break;

			case 7:
				firstSentence += " " + finalTemplateForFamily(possbileTemplates);
				firstSentence = replaceContentFamily(firstSentence);
				if(!finalTemplateForFamily(possbileTemplates).isEmpty())
					firstSentence += ".";
				break;
			}					
		}
		if(gender.equals("She")){
			
			firstSentence = firstSentence.replaceAll(" He", " She");
			firstSentence = firstSentence.replaceAll(" he", " She");
			firstSentence = firstSentence.replaceAll("his", "her");
			firstSentence = firstSentence.replaceAll("son", "daughter");
			
		}

		return firstSentence;
	}

	public String finalTemplateForBirthday(ArrayList<String> possibleTemplates) {
		ArrayList<String> finalT = new ArrayList<String>();
		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();

		for (int i = 0; i < possibleTemplates.size(); i++) {
			for (int j = 0; j < directKnowledges.size(); j++) {
				if (directKnowledges.get(j).getType().equals("birthday") && directKnowledges.get(j).getData() != null
						&& possibleTemplates.get(i).contains("birth_circumstances")) {
					int groupId = tgd.getGroupId("intro_birth_circumstances");
					String groupName = getColumn("birthday");

					finalT.addAll(td.getTemplates(groupId, groupName));
				}
				if (directKnowledges.get(j).getType().equals("gender") && directKnowledges.get(j).getData() != null
						&& possibleTemplates.get(i).contains("gender")
						&& directKnowledges.get(j).getType().equals("birthday")
						&& directKnowledges.get(j).getData() != null && possibleTemplates.get(i).contains("age")) {
					finalT.add(possibleTemplates.get(i));
				}
				
				if(directKnowledges.get(j).getType().equals("birth_city") && directKnowledges.get(j).getData() != null) {
					finalT.add(possibleTemplates.get(i));
				}
			}
		}

		int indexTemplate = chooseRandomTemplate(finalT);

		return finalT.get(indexTemplate);
	}

	public String replaceContentBirthday(String finalSentence) {
		String birthday = "";
		String gender = "";
		String age = "";
		String birth_city = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("birthday")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("birthday")
							&& directKnowledges.get(j).getData() != null) {
						birthday = directKnowledges.get(j).getData();

						String[] bday = birthday.split("\\/");
						String month = getMonth(bday[0]);
						String day = bday[1];
						String year = bday[2];
						
						finalSentence = finalSentence.replace("<birthday>", month + " " + day + ", " + year);
					}
				}
			}
			if (m.group(1).contains("age")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("birthday")
							&& directKnowledges.get(j).getData() != null) {
						String[] bday = directKnowledges.get(j).getData().split("/");
						int year = Integer.parseInt(bday[2]);
						int day = Integer.parseInt(bday[1]);
						int month = Integer.parseInt(bday[0]);

						LocalDate today = LocalDate.now();
						LocalDate birth = LocalDate.of(year, month, day);

						Period period = Period.between(birth, today);

						age = String.valueOf(period.getYears());

						finalSentence = finalSentence.replace("<age>", age);
					}
				}
			}
			if (m.group(1).contains("gender")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("gender")
							&& directKnowledges.get(j).getData() != null) {
						gender = directKnowledges.get(j).getData();

						finalSentence = finalSentence.replace("<gender>", gender);
					}
				}
			}
		}

		return finalSentence;
	}

	public String finalTemplateForEducation(ArrayList<String> possibleTemplates, String type) {
		ArrayList<String> finalT = new ArrayList<String>();
		ArrayList<String> finalTime = new ArrayList<String>();
		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();

		String introEducationTime = "";

		for (int i = 0; i < possibleTemplates.size(); i++) {
			for (int j = 0; j < educationalBgs.size(); j++) {
				if (educationalBgs.get(j).getType().contains(type) && educationalBgs.get(j).getInstitution() != null
						&& possibleTemplates.get(i).contains("institution")) {
					finalT.add(possibleTemplates.get(i));
				}
			}
		}

		String asd = "";
		int indexTemplate = 0;

		if (finalT.size() > 0) {
			indexTemplate = chooseRandomTemplate(finalT);

			if (possibleTemplates.get(indexTemplate).contains("intro_education_time")) {
				int groupId = tgd.getGroupId("intro_education_time");
				String groupName = getColumn("education");

				finalTime.addAll(td.getTemplates(groupId, groupName));

				int indexTime = chooseRandomTemplate(finalTime);

				introEducationTime = finalTime.get(indexTime);
			}

			asd = finalT.get(indexTemplate).replace("<intro_education_time>", introEducationTime);
		}

		return asd;
	}

	public String replaceContentEducation(String finalSentence, String type) {
		String institution = "";
		String year_graduated = "";
		String temp2 = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("institution")) {
				for (int j = 0; j < educationalBgs.size(); j++) {
					if (educationalBgs.get(j).getType().contains(type)
							&& educationalBgs.get(j).getInstitution() != null) {
						institution = educationalBgs.get(j).getInstitution();
						finalSentence = finalSentence.replace("<institution>", institution);
					}
				}
			}
			if (m.group(1).contains("grad_year")) {
				for (int j = 0; j < educationalBgs.size(); j++) {
					System.out.println(educationalBgs.get(j).getType() + " -- " + type);
					System.out.println(educationalBgs.get(j).getType().contains(type));
					
					if (educationalBgs.get(j).getType().contains(type)
						&& String.valueOf(educationalBgs.get(j).getYear_graduated())!= null
						&& educationalBgs.get(j).getYear_graduated() != 0){
						System.out.println("1 j - " + j);
						year_graduated = String.valueOf(educationalBgs.get(j).getYear_graduated());
						finalSentence = finalSentence.replace("<grad_year>", year_graduated);
						
					} 
					else if (educationalBgs.get(j).getType().contains(type)){	
						System.out.println("2 j - " + j);
						String[] temp = finalSentence.split("\\.");						
						String lastSentence = "";
						if(temp.length > 1)
							lastSentence = temp[temp.length-1];
						else
							lastSentence = finalSentence;
						
						System.out.println("LAST: " + lastSentence);
						
						if(lastSentence.contains("graduated"))
							lastSentence = lastSentence.replace("graduated", "is studying in");
						else if(lastSentence.contains("diploma"))
							lastSentence = lastSentence.replace("got his", "has yet to get his");
						
						System.out.println(">>> " + lastSentence);
						
						finalSentence = "";
						for(int i = 0; i < temp.length-1; i++)
							finalSentence += temp[i] + ".";
						finalSentence += lastSentence;
						
					} else {
						System.out.println("3j - " + j);
						if (finalSentence.contains("last <grad_year>"))
							finalSentence = finalSentence.replace(" last <grad_year>", "");
						else if (finalSentence.contains("in <grad_year>"))
							finalSentence = finalSentence.replace(" in <grad_year>", "");
						else if (finalSentence.contains("on <grad_year>"))
							finalSentence = finalSentence.replace(" on <grad_year>", "");
					}
				}
			}
		}

		return finalSentence;
	}

	public String finalTemplateForWork(ArrayList<String> possibleTemplates) {
		ArrayList<String> finalT = new ArrayList<String>();

		for (int i = 0; i < possibleTemplates.size(); i++) {
			for (int j = 0; j < works.size(); j++) {
				if (works.get(j).getInstitution() != null && possibleTemplates.get(i).contains("institution")) {
					finalT.add(possibleTemplates.get(i));
				}
				if (works.get(j).getDateStarted() != null && possibleTemplates.get(i).contains("job_start")
						&& works.get(j).getDateEnded() != null && possibleTemplates.get(i).contains("job_end")) {
					finalT.add(possibleTemplates.get(i));
				}
			}
		}

		/*for (int i = 0; i < finalT.size(); i++) {
			System.out.println(finalT.get(i));
		}
*/
		String asd = "";
		int indexTemplate = 0;

		if (finalT.size() > 0) {
			indexTemplate = chooseRandomTemplate(finalT);
			asd = finalT.get(indexTemplate);
		}

		return asd;
	}

	public String replaceContentWork(String finalSentence) {
		String institution = "";
		String dateStarted = "";
		String dateEnded = "";
		// String location = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("institution")) {
				for (int j = 0; j < works.size(); j++) {
					if (works.get(j).getInstitution() != null) {
						institution = works.get(j).getInstitution();
						finalSentence = finalSentence.replace("<institution>", institution);
					}
				}
			}
			if (m.group(1).contains("job_start")) {
				for (int j = 0; j < works.size(); j++) {
					if (works.get(j).getDateStarted() != null) {
						dateStarted = works.get(j).getDateStarted();
						
						String[] dateS = dateStarted.split("\\-");
						String month = getMonth(dateS[1]);
						String day = dateS[2];
						String year = dateS[0];
						
						finalSentence = finalSentence.replace("<job_start>", month + " " + day + ", " + year);
					}
				}
			}
			if (m.group(1).contains("job_end")) {
				for (int j = 0; j < works.size(); j++) {
					if (works.get(j).getDateEnded() != null) {
						dateEnded = works.get(j).getDateEnded();
						
						String[] dateE = dateEnded.split("\\-");
						String month = getMonth(dateE[1]);
						String day = dateE[2];
						String year = dateE[0];
						
						finalSentence = finalSentence.replace("<job_end>", month + " " + day + ", " + year);
					}
				}
			}
		}

		return finalSentence;
	}

	public String finalTemplateForLocHome(ArrayList<String> possibleTemplates) {
		ArrayList<String> finalT = new ArrayList<String>();

		for (int i = 0; i < possibleTemplates.size(); i++) {
			for (int j = 0; j < directKnowledges.size(); j++) {
				if (directKnowledges.get(j).getType().equals("location") && directKnowledges.get(j).getData() != null
						&& possibleTemplates.get(i).contains("location")) {
					finalT.add(possibleTemplates.get(i));
				}
				else if (directKnowledges.get(j).getType().equals("hometown") && directKnowledges.get(j).getData() != null
						&& possibleTemplates.get(i).contains("hometown")) {
					finalT.add(possibleTemplates.get(i));
				}
			}
		}

		int indexTemplate = chooseRandomTemplate(finalT);

		return finalT.get(indexTemplate);
	}
	
	public String replaceContentLocHome(String finalSentence) {
		String hometown = "";
		String location = "";
		
		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("hometown")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("hometown")
							&& directKnowledges.get(j).getData() != null) {
						hometown = directKnowledges.get(j).getData();
						finalSentence = finalSentence.replace("<hometown>", hometown);
					}
				}
			}
			if (m.group(1).contains("location")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("location")
							&& directKnowledges.get(j).getData() != null) {
						location = directKnowledges.get(j).getData();
						finalSentence = finalSentence.replace("<location>", location);
					}
				}
			}
			
		}
		
		
		return finalSentence;
	}

	public String finalTemplateForFamily(ArrayList<String> possibleTemplates) {
		ArrayList<String> finalT = new ArrayList<String>();
		String mother = "";
		String father = "";

		for (int j = 0; j < families.size(); j++) {
			if (families.get(j).getRelationship().equalsIgnoreCase("mother"))
				mother = families.get(j).getName();
			else if (families.get(j).getRelationship().equalsIgnoreCase("father"))
				father = families.get(j).getName();
		}

		for (int i = 0; i < possibleTemplates.size(); i++) {
			if (!mother.equals("") && possibleTemplates.get(i).contains("mother") && !father.equals("")
					&& possibleTemplates.get(i).contains("father")) { // BOTH
				finalT.add(possibleTemplates.get(i));
			}
			if (!father.equals("") && possibleTemplates.get(i).contains("father") && mother.equals("")
					&& !possibleTemplates.get(i).contains("mother")) { // MOTHER
				finalT.add(possibleTemplates.get(i));
			}
			if (!mother.equals("") && possibleTemplates.get(i).contains("mother") && father.equals("")
					&& !possibleTemplates.get(i).contains("father")) { // FATHER
				finalT.add(possibleTemplates.get(i));
			}
		}

		int indexTemplate = chooseRandomTemplate(finalT);

		return finalT.get(indexTemplate);
	}

	public String replaceContentFamily(String finalSentence) {
		String name = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("mother")) {
				for (int j = 0; j < families.size(); j++) {
					if (families.get(j).getRelationship().equals("mother")) {
						name = families.get(j).getName();
						finalSentence = finalSentence.replace("<mother>", name);
					}
				}
			}
			if (m.group(1).contains("father")) {
				for (int j = 0; j < families.size(); j++) {
					if (families.get(j).getRelationship().equals("father")) {
						name = families.get(j).getName();
						finalSentence = finalSentence.replace("<father>", name);
					}
				}
			}
		}

		return finalSentence;
	}

	public String getColumn(String groupName) {
		String columnName = "";

		for (int i = 0; i < checkColumn.size(); i++) {
			if (groupName.contains(checkColumn.get(i)))
				columnName = checkColumn.get(i);
		}

		return columnName;
	}

	public String getEducationType(String groupName) {
		String type = "";

		if (groupName.contains("gs"))
			type = "Grade School";
		else if (groupName.contains("hs"))
			type = "High School";
		else if (groupName.contains("college"))
			type = "Graduate School";

		return type;
	}

	public int chooseRandomTemplate(ArrayList<String> templates) {
		int chosenTemplate = -1;

		Random random = new Random();
		chosenTemplate = random.nextInt(templates.size() - 1 - 0 + 1);

		return chosenTemplate;
	}
	
	public String getMonth(String m){
        switch (m) {
            case "01":  return "January";
            case "02":  return"February";
            case "03":  return"March";
            case "04":  return "April";
            case "05":  return "May";
            case "06":  return "June";
            case "07":  return "July";
            case "08":  return "August";
            case "09":  return"September";
            case "10": return"October";
            case "11": return "November";
            case "12": return "December";
        }
		return "month";
	}
}
