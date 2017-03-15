package controller.storyGenerationBody;

import java.io.IOException;
import java.util.ArrayList;

import controller.textUnderstanding.TextUnderstanding;
import models.ToBeProcessed;
import modelsDAO.ToBeProcessedDAO;

public class GenerateBody {
	
	private ArrayList<ToBeProcessed> tbps = new ArrayList<ToBeProcessed> ();

	public GenerateBody() throws IOException {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		this.tbps = tbpd.getAllPosts();
		
		Preprocessing p = new Preprocessing(tbps);
		this.tbps = p.getUpdatedPosts();
		
		TextUnderstanding tu = new TextUnderstanding();
		tu.performTextUnderstanding(tbps);
		
		EventClassification ec = new EventClassification();
		ec.performEventClassification();
	}
}
