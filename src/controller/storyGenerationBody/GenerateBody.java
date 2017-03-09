package controller.storyGenerationBody;

import java.util.ArrayList;

import controller.textUnderstanding.TextUnderstanding;
import models.ToBeProcessed;
import modelsDAO.ToBeProcessedDAO;

public class GenerateBody {
	
	private ArrayList<ToBeProcessed> tbps = new ArrayList<ToBeProcessed> ();

	public GenerateBody() {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		this.tbps = tbpd.getAllPosts();
		
		TextUnderstanding tu = new TextUnderstanding();
		tu.performTextUnderstanding(tbps);
		
		EventClassification ec = new EventClassification();
		ec.performEventClassification();
	}
}
