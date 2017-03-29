package controller.storyGenerationBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import controller.textUnderstanding.TextUnderstanding;
import models.CheckIn;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.ToBeProcessedDAO;
import modelsDAO.VerbObjectDAO;
import simplenlg.features.Feature;
import simplenlg.features.Tense;
import simplenlg.framework.DocumentElement;
import simplenlg.framework.NLGFactory;
import simplenlg.lexicon.Lexicon;
import simplenlg.phrasespec.NPPhraseSpec;
import simplenlg.phrasespec.SPhraseSpec;
import simplenlg.phrasespec.VPPhraseSpec;
import simplenlg.realiser.english.Realiser;

public class GenerateBody {

	private ArrayList<ToBeProcessed> tbps = new ArrayList<ToBeProcessed>();
	private String body = "";

	public GenerateBody() throws IOException {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		this.tbps = tbpd.getAllPosts();

		// Preprocessing p = new Preprocessing(tbps);
		// this.tbps = p.getUpdatedPosts();
		
//		 TextUnderstanding tu = new TextUnderstanding();
//		 tu.performTextUnderstanding(tbps);
		
		// EventClassification ec = new EventClassification();
		// ec.performEventClassification(tbps);

		this.body = generateWholeBody();
	}

	public String generateWholeBody() {
		String sentence = "";
		ArrayList<VerbObject> vos = new ArrayList<VerbObject>();

		VerbObjectDAO vod = new VerbObjectDAO();
		HashMap<Integer, HashMap<Integer, VerbObject>> verbObjects = vod.getClassifiedPosts();

		Iterator<HashMap.Entry<Integer, HashMap<Integer, VerbObject>>> parent = verbObjects.entrySet().iterator();
		while (parent.hasNext()) {
			HashMap.Entry<Integer, HashMap<Integer, VerbObject>> parentPair = parent.next();
			// System.out.println("parentPair.getKey() : " + parentPair.getKey()
			// + " parentPair.getValue() : " + parentPair.getValue());

			Iterator<HashMap.Entry<Integer, VerbObject>> child = (parentPair.getValue()).entrySet().iterator();
			while (child.hasNext()) {
				HashMap.Entry<Integer, VerbObject> childPair = child.next();
				VerbObject vo = (VerbObject) childPair.getValue();
				vos.add(vo);
				// System.out.println("childPair.getKey() : " +
				// childPair.getKey() + " childPair.getValue() : " +
				// vo.getSentence());
			}

			String output = generateParagraph(vos);

			sentence += output + "\n";

			vos.clear();
		}
		
		System.out.println("BODY SENTENCE: \n " + sentence);

		return sentence;
	}

	public String generateParagraph(ArrayList<VerbObject> verbObjects) {
		String paragraph = "";
		String doer = "";

		DirectKnowledgeDAO dkd = new DirectKnowledgeDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();

		doer = dkd.getSpecificDirectKnowledge("first_name").split(" ")[0]; //For multiple first names, get first word only

		Lexicon lexicon = Lexicon.getDefaultLexicon();
		NLGFactory nlgFactory = new NLGFactory(lexicon);
		Realiser realiser = new Realiser(lexicon);

		ArrayList<DocumentElement> documentElements = new ArrayList<DocumentElement> ();
		
		for (int i = verbObjects.size() - 1; i >= 0; i--) {
			ToBeProcessed data = tbpd.getPost(verbObjects.get(i).getPi());
			String monthInt = data.getMonth();
			String monthWord = data.getMonth(monthInt);
			String day = data.getDay();
			String year = data.getYear();
			String tagged = data.getTagged();
			CheckIn location = data.getCheckIn();
			String place = location.getPlace();
			String city = location.getCity();
			String country = location.getCountry();
						
			String date = "On " + monthWord + " " + day + ", " + year + ", ";
			String with = "";
			String at = "";
			if (tagged != null && !tagged.equals("") && !tagged.isEmpty())
				with += "with " + tagged;
			if (place != null && !tagged.isEmpty())
				at += "at " + place;
			if (city != null && !tagged.isEmpty())
				at += ", " + city;
			if (country != null && !tagged.isEmpty())
				at += ", " + country;
			
			SPhraseSpec p = nlgFactory.createClause();
			p.addComplement(nlgFactory.createStringElement(date));
			p.addComplement(doer);
			p.addComplement(verbObjects.get(i).getVerb());
			p.addComplement(verbObjects.get(i).getNoun());
			p.addComplement(with);
			p.addComplement(at);
			
			p.setFeature(Feature.TENSE, Tense.PAST);
            
            DocumentElement documentElement = nlgFactory.createSentence(p);
            
            documentElements.add(documentElement);
		}
		
		DocumentElement par = nlgFactory.createParagraph(documentElements);
		paragraph = realiser.realiseSentence(par);

		return paragraph;
	}
}
