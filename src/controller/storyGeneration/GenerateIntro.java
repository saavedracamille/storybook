package controller.storyGeneration;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.DirectKnowledge;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.TemplateDAO;
import modelsDAO.TemplateGroupDAO;

public class GenerateIntro {

	private String introduction = "";
	private static ArrayList<String> mainTemplate = new ArrayList<String>();
	private static ArrayList<String> checkColumn = new ArrayList<String>();

	public GenerateIntro() {
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

		introduction = generateSentences();
		System.out.println(introduction);
	}

	public String generateSentences() {
		String firstSentence = "";
		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();
		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		String firstName = "";
		String middleName = "";
		String lastName = "";

		ArrayList<DirectKnowledge> directKnowledges = dkd.getDirectKnowledge();
		for (int j = 0; j < directKnowledges.size(); j++) {
			if (directKnowledges.get(j).getType().equals("first_name") && directKnowledges.get(j).getData() != null)
				firstName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("middle_name") && directKnowledges.get(j).getData() != null)
				middleName = directKnowledges.get(j).getData();
			if (directKnowledges.get(j).getType().equals("last_name") && directKnowledges.get(j).getData() != null)
				lastName = directKnowledges.get(j).getData();
		}

		firstSentence += firstName + middleName + " " + lastName + " ";
		System.out.println("NAME: " + firstSentence);

		// for (int i = 1; i < mainTemplate.size(); i++) {
		if (!mainTemplate.get(1).contains(",")) {
			int groupId = tgd.getGroupId(mainTemplate.get(1));
			String groupName = getColumn(mainTemplate.get(1));

			ArrayList<String> possbileTemplates = td.getTemplates(groupId, groupName);
			for (int j = 0; j < possbileTemplates.size(); j++)
				System.out.println(possbileTemplates.get(j));

			firstSentence += finalTemplateBirthday(possbileTemplates, directKnowledges);
			firstSentence = getFinalTemplatesBirthday(firstSentence, directKnowledges);
		} else {
			// for location, hometown
		}
		// }

		return firstSentence;
	}

	public String finalTemplateBirthday(ArrayList<String> possibleTemplates,
			ArrayList<DirectKnowledge> directKnowledges) {
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
			}
		}

		int indexTemplate = chooseRandomTemplate(finalT);

		return finalT.get(indexTemplate);
	}

	public String getFinalTemplatesBirthday(String finalSentence, ArrayList<DirectKnowledge> directKnowledges) {
		String gender = "";
		String age = "";

		Pattern p = Pattern.compile("\\<(.*?)\\>");
		Matcher m = p.matcher(finalSentence);

		while (m.find()) {
			if (m.group(1).contains("birthday")) {
				for (int j = 0; j < directKnowledges.size(); j++) {
					if (directKnowledges.get(j).getType().equals("birthday")
							&& directKnowledges.get(j).getData() != null) {
						String birthday = directKnowledges.get(j).getData();
						finalSentence = finalSentence.replace("<birthday>", birthday);
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
						LocalDate birthday = LocalDate.of(year, month, day);

						Period period = Period.between(birthday, today);

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

	public String getColumn(String groupName) {
		String columnName = "";

		for (int i = 0; i < checkColumn.size(); i++) {
			if (groupName.contains(checkColumn.get(i)))
				columnName = checkColumn.get(i);
		}

		return columnName;
	}

	public int chooseRandomTemplate(ArrayList<String> templates) {
		int chosenTemplate = -1;

		Random random = new Random();
		chosenTemplate = random.nextInt(templates.size() - 1 - 0 + 1); // (max - min + 1) + min
		System.out.println("RANDOM NUMBER IS: " + chosenTemplate);

		return chosenTemplate;
	}
}
