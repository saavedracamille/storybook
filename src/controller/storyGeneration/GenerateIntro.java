package controller.storyGeneration;

import java.util.ArrayList;
import java.util.Random;

import modelsDAO.TemplateDAO;
import modelsDAO.TemplateGroupDAO;

public class GenerateIntro {

	private String introduction = "";
	private static ArrayList<String> mainTemplate = new ArrayList<String> ();
	private static ArrayList<String> checkColumn = new ArrayList<String> ();
	
	public GenerateIntro() {
		mainTemplate.add("<name>");
		mainTemplate.add("<intro_birth>");
		mainTemplate.add("<education>");
		mainTemplate.add("<work>");
		mainTemplate.add("<location>");
		mainTemplate.add("<hometown>");
		mainTemplate.add("<family>");
		
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
		int x = 0;
        int y = 10;
        
        y += 1;
        y += x = x++ + 1;
        System.out.println(y);
        
		String firstSentence = mainTemplate.get(0);
		TemplateGroupDAO tgd = new TemplateGroupDAO();
		TemplateDAO td = new TemplateDAO();
		
		for (int i = 1; i < mainTemplate.size(); i++) {
//			int groupId = tgd.getGroupId(mainTemplate.get(i));
//			ArrayList<String> templates = td.getTemplates(groupId, groupName);
//			int indexTemplate = chooseRandomTemplate(templates);
//			firstSentence += templates.get(indexTemplate);
		}
		
		return firstSentence;
	}
	
	public int chooseRandomTemplate(ArrayList<String> templates) {
		int chosenTemplate = -1;
		int max = templates.size() - 1;
		
		Random random = new Random();
		chosenTemplate = random.nextInt() % (max - 0 + 1);
		System.out.println("RANDOM NUMBER IS: " + chosenTemplate);
		
		return chosenTemplate;
	}
}
