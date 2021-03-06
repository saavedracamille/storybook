package controller.storyGenerationIntro;

import java.time.LocalDate;
import java.time.LocalDateTime;
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

//		mainTemplate.add("<name>");
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

	public String getIntro() {
		return this.introduction;
	}

	public String generateSentences() {
		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();

		String firstSentence = "";
		String wholeName = getName();
		String gender = getGender();

		firstSentence += wholeName;

		for (int i = 0; i < mainTemplate.size(); i++) {
			ArrayList<String> possibleTemplates = new ArrayList<String>();
			int groupId = 0;
			String groupName = "";
			String temp = "";
			
			String production = mainTemplate.get(i);
			production = production.replace(">", "");
			production = production.replace("<", "");

//			System.out.println("\n\nPRODUCTION " + production);

			if (!mainTemplate.get(i).contains(",")) {
				groupId = tgd.getGroupId(production);
				groupName = getColumn(production);
				possibleTemplates = td.getTemplates(groupId, groupName);
			} else {
				groupId = tgd.getGroupId(production);
				groupName = getColumn(production);

				possibleTemplates.addAll(td.getTemplates(groupId, groupName));

				String[] locationHometown = production.split(", ");

				for (int j = 0; j < locationHometown.length; j++) {
					groupId = tgd.getGroupId("intro_" + locationHometown[j]);
					groupName = getColumn("intro_" + locationHometown[j]);

					possibleTemplates.addAll(td.getTemplates(groupId, groupName));
				}
			}

			switch (i) {
			case 0:
				firstSentence += finalTemplateForBirthday(possibleTemplates);
				firstSentence = replaceContentBirthday(firstSentence);

				if (!firstSentence.isEmpty() && !firstSentence.endsWith(",")) {
					if (firstSentence.contains("who"))
						firstSentence += " ";
					else
						firstSentence += ".";
				} else if (firstSentence.endsWith(","))
					firstSentence += " ";

				break;

			case 1:
				temp = finalTemplateForEducation(possibleTemplates, getEducationType(mainTemplate.get(i)));
				
				if (firstSentence.endsWith(".") && !temp.isEmpty())
					firstSentence += " " + gender + " ";

				firstSentence += temp;
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));

				if (!temp.isEmpty())
					firstSentence += ".";

				break;

			case 2:
				temp = finalTemplateForEducation(possibleTemplates, getEducationType(mainTemplate.get(i)));
				
				if (firstSentence.endsWith(".") && !temp.isEmpty())
					firstSentence += " " + gender + " ";

				firstSentence += temp;
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));

				if (!temp.isEmpty())
					firstSentence += ".";

				break;

			case 3:
				temp = finalTemplateForEducation(possibleTemplates, getEducationType(mainTemplate.get(i)));
				
				if (firstSentence.endsWith(".") && !temp.isEmpty())
					firstSentence += " " + gender + " ";

				firstSentence += temp;
				firstSentence = replaceContentEducation(firstSentence, getEducationType(mainTemplate.get(i)));

				if (!temp.isEmpty())
					firstSentence += ".";

				break;

			case 4:
				temp = finalTemplateForWork(possibleTemplates);
				
				if (firstSentence.endsWith(".") && !temp.isEmpty())
					firstSentence += " " + gender + " ";

				firstSentence += temp;
				firstSentence = replaceContentWork(firstSentence);

				if (!temp.isEmpty())
					firstSentence += ".";

				break;

			case 5:
				temp = finalTemplateForLocHome(possibleTemplates);
				
				if (firstSentence.endsWith(".") && !temp.isEmpty())
					firstSentence += " " + gender + " ";

				firstSentence += temp;
				firstSentence = replaceContentLocHome(firstSentence);

				if (!temp.isEmpty())
					firstSentence += ".";
				
				break;

			case 6:
				temp = finalTemplateForFamily(possibleTemplates);
				
				if (families.size() != 0) {
					if (firstSentence.endsWith(".") && !temp.isEmpty())
						firstSentence += " " + gender + " ";

					firstSentence += " " + temp;
					firstSentence = replaceContentFamily(firstSentence);

					if (!temp.isEmpty())
						firstSentence += ".";
				}
				
				break;
			}
		}

		if (gender.equals("She")) {
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
						&& possibleTemplates.get(i).contains("gender")) {
					
					finalT.add(possibleTemplates.get(i));
				}

//				if (directKnowledges.get(j).getType().equals("birth_city") && directKnowledges.get(j).getData() != null)
//					finalT.add(possibleTemplates.get(i));
			}
		}

//		int indexTemplate = chooseRandomTemplate(finalT);
		
		for (int a = 0; a < finalT.size(); a++) {
			System.out.println("templates: " + finalT.get(a));
		}

		return chooseRandomTemplate(finalT);
	}

	public String replaceContentBirthday(String finalSentence) {
		String birthday = "";
		String gender = "";
		String age = "";

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
		String template = "";
		int indexTemplate = 0;

		if (finalT.size() > 0) {
			template = chooseRandomTemplate(finalT);
			if (template.contains("intro_education_time")) {
				int groupId = tgd.getGroupId("intro_education_time");
				String groupName = getColumn("education");

				finalTime.addAll(td.getTemplates(groupId, groupName));

//				int indexTime = chooseRandomTemplate(finalTime);

				introEducationTime = chooseRandomTemplate(finalTime);
			}

			asd = finalT.get(indexTemplate).replace("<intro_education_time>", introEducationTime);
		}

		return asd;
	}

	public String replaceContentEducation(String finalSentence, String type) {
		String institution = "";
		String year_graduated = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("institution")) {
				for (int j = 0; j < educationalBgs.size(); j++) {
					if (educationalBgs.get(j).getType().contains(type)
							&& educationalBgs.get(j).getInstitution() != null) {
						institution = educationalBgs.get(j).getInstitution();
						finalSentence = finalSentence.replace("<institution>", institution);
//						System.out.println("final sentence in institution if: " + finalSentence);
					}
				}
			}

			if (m.group(1).contains("grad_year")) {
				for (int j = 0; j < educationalBgs.size(); j++) {
					if (educationalBgs.get(j).getType().contains(type)
							&& String.valueOf(educationalBgs.get(j).getYear_graduated()) != null
							&& educationalBgs.get(j).getYear_graduated() != 0) {
						year_graduated = String.valueOf(educationalBgs.get(j).getYear_graduated());
						LocalDateTime now = LocalDateTime.now();
						int yr = now.getYear();
						if (yr > Integer.parseInt(year_graduated))
							finalSentence = finalSentence.replace("<grad_year>", year_graduated);
						else {
							finalSentence = removeGrad(finalSentence);
							finalSentence = replaceToPresent(finalSentence);
						}
//						System.out.println("final sentence in grad year if: " + finalSentence);
					} else if (educationalBgs.get(j).getType().contains(type)) {
						finalSentence = replaceToPresent(finalSentence);
//						System.out.println("final sentence in grad year else if 1: " + finalSentence);
					} else if (String.valueOf(educationalBgs.get(j).getYear_graduated()) != null
							&& educationalBgs.get(j).getYear_graduated() == 0) {
						finalSentence = removeGrad(finalSentence);
//						System.out.println("final sentence in grad year else if 2: " + finalSentence);
					}
				}
			}
		}

		return finalSentence;
	}

	public String removeGrad(String finalSentence) {
		if (finalSentence.contains("last <grad_year>"))
			finalSentence = finalSentence.replace(" last <grad_year>", "");
		else if (finalSentence.contains("in <grad_year>"))
			finalSentence = finalSentence.replace(" in <grad_year>", "");
		else if (finalSentence.contains("on <grad_year>"))
			finalSentence = finalSentence.replace(" on <grad_year>", "");

		return finalSentence;
	}

	public String replaceToPresent(String finalSentence) {
		String[] temp = finalSentence.split("\\.");
		String lastSentence = "";

		if (temp.length > 1)
			lastSentence = temp[temp.length - 1];
		else
			lastSentence = finalSentence;

		if (lastSentence.contains("graduated"))
			lastSentence = lastSentence.replace("graduated", "is studying");
		else if (lastSentence.contains("diploma"))
			lastSentence = lastSentence.replace("got his", "has yet to get his");

		finalSentence = "";

		for (int i = 0; i < temp.length - 1; i++)
			finalSentence += temp[i] + ".";

		finalSentence += lastSentence;

		return finalSentence;
	}

	public String finalTemplateForWork(ArrayList<String> possibleTemplates) {
		ArrayList<String> finalT = new ArrayList<String>();

		for (int i = 0; i < possibleTemplates.size(); i++) {
			for (int j = 0; j < works.size(); j++) {
				if (works.get(j).getInstitution() != null && possibleTemplates.get(i).contains("institution"))
					finalT.add(possibleTemplates.get(i));

				if (works.get(j).getDateStarted() != null && possibleTemplates.get(i).contains("job_start")
						&& works.get(j).getDateEnded() != null && possibleTemplates.get(i).contains("job_end"))
					finalT.add(possibleTemplates.get(i));
			}
		}

//		String asd = "";
//		int indexTemplate = 0;
//
//		if (finalT.size() > 0) {
//			indexTemplate = chooseRandomTemplate(finalT);
//			asd = finalT.get(indexTemplate);
//		}

		return chooseRandomTemplate(finalT);
	}

	public String replaceContentWork(String finalSentence) {
		String institution = "";
		String dateStarted = "";
		String dateEnded = "";

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
						&& possibleTemplates.get(i).contains("location"))
					finalT.add(possibleTemplates.get(i));
				else if (directKnowledges.get(j).getType().equals("hometown")
						&& directKnowledges.get(j).getData() != null && possibleTemplates.get(i).contains("hometown"))
					finalT.add(possibleTemplates.get(i));
			}
		}

//		int indexTemplate = chooseRandomTemplate(finalT);

		return chooseRandomTemplate(finalT);
	}

	public String replaceContentLocHome(String finalSentence) {
		String hometown = "";
		String location = "";
		String tempsentence = "";

		String[] temp = finalSentence.split("\\.");

		for (int i = 0; i < temp.length - 1; i++)
			tempsentence += temp[i] + ".";

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

		if (location != null && hometown != null && hometown.equals(location)) {
			finalSentence = tempsentence;
			finalSentence += " He is living in " + location;
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
					&& possibleTemplates.get(i).contains("father")) // BOTH
				finalT.add(possibleTemplates.get(i));

			if (!father.equals("") && possibleTemplates.get(i).contains("father") && mother.equals("")
					&& !possibleTemplates.get(i).contains("mother")) // MOTHER
				finalT.add(possibleTemplates.get(i));

			if (!mother.equals("") && possibleTemplates.get(i).contains("mother") && father.equals("")
					&& !possibleTemplates.get(i).contains("father")) // FATHER
				finalT.add(possibleTemplates.get(i));
		}

//		int indexTemplate = chooseRandomTemplate(finalT);

		return chooseRandomTemplate(finalT);
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

	public String chooseRandomTemplate(ArrayList<String> templates) {
		int index = -1;
		String chosenTemplate = "";

		if (templates.size() > 0) {
			Random random = new Random();
			index = random.nextInt(templates.size());
			chosenTemplate = templates.get(index);
		}

		return chosenTemplate;
	}

	public String getName() {
		String wholeName = "";

		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData() + " ";
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null
					&& !directKnowledges.get(j).getData().equals(""))
				wholeName += directKnowledges.get(j).getData();
		}

		return wholeName + " ";
	}

	public String getGender() {
		String gender = "";

		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("gender") && directKnowledges.get(j).getData() != null)
				if (directKnowledges.get(j).getData().equals("female"))
					gender = "She";
				else
					gender = "He";
		}

		return gender;
	}

	public String getMonth(String m) {
		switch (m) {
			case "01": return "January";
			case "02": return "February";
			case "03": return "March";
			case "04": return "April";
			case "05": return "May";
			case "06": return "June";
			case "07": return "July";
			case "08": return "August";
			case "09": return "September";
			case "10": return "October";
			case "11": return "November";
			case "12": return "December";
		}

		return "month";
	}

	public String getEducationType(String groupName) {
		String type = "";

		if (groupName.contains("gs"))
			type = "Grade School";
		else if (groupName.contains("hs"))
			type = "High School";
		else if (groupName.contains("college"))
			type = "College";

		return type;
	}
}
