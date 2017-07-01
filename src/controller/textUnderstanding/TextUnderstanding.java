package controller.textUnderstanding;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.Label;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.ling.CoreAnnotations.LemmaAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.NamedEntityTagAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.PartOfSpeechAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.SentencesAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TextAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TokensAnnotation;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.trees.GrammaticalStructure;
import edu.stanford.nlp.trees.GrammaticalStructureFactory;
import edu.stanford.nlp.trees.HeadFinder;
import edu.stanford.nlp.trees.PennTreebankLanguagePack;
import edu.stanford.nlp.trees.SemanticHeadFinder;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.trees.TreeCoreAnnotations.TreeAnnotation;
import edu.stanford.nlp.trees.TreebankLanguagePack;
import edu.stanford.nlp.trees.TypedDependency;
import edu.stanford.nlp.trees.tregex.TregexMatcher;
import edu.stanford.nlp.trees.tregex.TregexPattern;
import edu.stanford.nlp.util.CoreMap;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.VerbObjectDAO;

public class TextUnderstanding {

	public void performTextUnderstanding(ArrayList<ToBeProcessed> posts) {
		VerbObjectDAO vod = new VerbObjectDAO();
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject> ();

		Properties props = new Properties();
		props.put("annotators", "tokenize, ssplit, pos, lemma, ner, parse, dcoref");
		StanfordCoreNLP pipeline = new StanfordCoreNLP(props);

		for (int i = 0; i < posts.size(); i++) {
			Annotation document = new Annotation(posts.get(i).getData());
			pipeline.annotate(document);
			List<CoreMap> sentences = document.get(SentencesAnnotation.class);

			for (CoreMap sentence : sentences) {
				String phrasalString = "";
				
				for (CoreLabel token : sentence.get(TokensAnnotation.class)) {

					String word = token.get(TextAnnotation.class);
					String pos = token.get(PartOfSpeechAnnotation.class);
					String ne = token.get(NamedEntityTagAnnotation.class);

//					 System.out.println("word: " + word + "\n" +
//					 " pos: " + pos + "\n" +
//					 " ne: " + ne + "\n");
					
					phrasalString += pos.toUpperCase() + " ";
				}
				
				System.out.println(phrasalString);
				
				String vp = "";
				String np = "";
			
				LexicalizedParser lp = LexicalizedParser.loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
				Tree parse = lp.parse(sentence.toString());
				System.out.println("PARSER: " + parse);
				
				vp = getVerbFromUniversalDependencies(sentence);
				np = getNounFromUniversalDependencies(sentence);
				if (vp.isEmpty() && vp.equals(""))
					vp = getVerbPhrase(parse);
				if (np.isEmpty() && np.equals(""))
					np = getNounPhrase(parse);
				
				System.out.println("vp: " + vp);
				System.out.println("np: " + np);
				
				String lemma = "";
				Annotation vpDocument = new Annotation(vp);
				pipeline.annotate(vpDocument);
				List<CoreMap> sentences2 = vpDocument.get(SentencesAnnotation.class);
				for (CoreMap s : sentences2) {
					for (CoreLabel token: s.get(TokensAnnotation.class)) {
						lemma = token.get(LemmaAnnotation.class);
//						System.out.println("LEMMA: " + lemma);
					}
				}
				
				verbObjects.add(new VerbObject(posts.get(i).getId(), lemma, np, sentence.toString()));
			}
		}
		
		vod.addVerbObject(verbObjects);
	}
	
	public String getVerbPhrase(Tree parse) {
		String verbPhrase = "";
		String actualVerbPhrase = "";
		Tree t;
		
		do {
			t = null;
			TregexPattern pattern = TregexPattern.compile("VP");
            TregexMatcher matcher = pattern.matcher(parse);
            while (matcher.find()) {
            	parse = matcher.getMatch();
            	verbPhrase += getActualVerbPhrase(parse);
            	actualVerbPhrase = getActualNounPhrase(parse);
            	if (!verbPhrase.contains(actualVerbPhrase))
            		verbPhrase += actualVerbPhrase;
            	List<Tree> leaves1 = parse.getChildrenAsList();
            	for (Tree tree1 : leaves1) {
            		String val = tree1.label().value();
            		if (val.equals("VP")) {
            			t = tree1;
            			parse = t;
            			break;
            		}
            	}
            }
        } while (t != null);
		
        //verbPhrase += getActualVerbPhrase(parse);
        
        return verbPhrase;
	}
	
	public String getNounPhrase(Tree parse) {
		String nounPhrase = "";
		String actualNounPhrase = "";
		Tree t;
		
		do {
			t = null;
			TregexPattern pattern = TregexPattern.compile("NP");
            TregexMatcher matcher = pattern.matcher(parse);
            while (matcher.find()) {
            	parse = matcher.getMatch();
            	actualNounPhrase = getActualNounPhrase(parse);
            	if (!nounPhrase.contains(actualNounPhrase))
            		nounPhrase += actualNounPhrase;
            	List<Tree> leaves1 = parse.getChildrenAsList();
            	for (Tree tree1 : leaves1) {
            		String val = tree1.label().value();
            		if (val.equals("NP")) {
            			t = tree1;
            			parse = t;
            			break;
            		}
            	}
            	
            }
        } while (t != null);
		
//		nounPhrase += getActualNounPhrase(parse);
        
        return nounPhrase;
	}
	
	public String getActualVerbPhrase(Tree tree) {
		StringBuilder stringbuilder = new StringBuilder();
		// nn[] = tree.children();
        //Tree t = nn[0];
		List<Tree> leaves1 = tree.getChildrenAsList();
		
        for (Tree t : leaves1) {
	        String val = t.label().value();
	        if (val.equals("VB") || val.equals("VBZ") || val.equals("VBP")
	                || val.equals("VBG") || val.equals("VBD") || val.equals("VBN")) {
		    	ArrayList<Label> ss = t.yield();
		    	for (Label s : ss) {
		    		stringbuilder.append(s).append(" ");
		    	}
	        }
        }
        
//        System.out.println("the final stringbilder for verb phrase is: " + stringbuilder);
    	
    	return stringbuilder.toString();
	}
	
	public String getActualNounPhrase(Tree tree) {
		StringBuilder stringbuilder = new StringBuilder();
		List<Tree> leaves1 = tree.getChildrenAsList();
		
        for (Tree t : leaves1) {
	        String val = t.label().value();
	        if (val.equals("NN") || val.equals("NNS") || val.equals("NNP")
	                || val.equals("NNPS") || val.equals("DT")) {
		    	ArrayList<Label> ss = t.yield();
		    	for (Label s : ss) {
		    		stringbuilder.append(s).append(" ");
		    	}
	        }
        }
        
//        System.out.println("the final stringbilder for noun phrase is: " + stringbuilder);
    	
    	return stringbuilder.toString();
	}
	
	public String getNounFromUniversalDependencies(CoreMap sentence) {
		String noun = "";
		
		Tree tree = sentence.get(TreeAnnotation.class);
		TreebankLanguagePack tlp = new PennTreebankLanguagePack();
		GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
		GrammaticalStructure gs = gsf.newGrammaticalStructure(tree);
		Collection<TypedDependency> td = gs.typedDependenciesCollapsed();
//		System.out.println(td);

		Object[] list = td.toArray();
		TypedDependency typedDependency;
		for (Object object : list) {
			typedDependency = (TypedDependency) object;
//			System.out.println(typedDependency.dep().toString() + ": " + typedDependency.reln());
				if (typedDependency.reln().getShortName().equals("dobj")) {
				   System.out.println("NP FROM UNIV DEPENDENCIES: " + typedDependency.dep().toString().split("/")[0]);
				   noun = typedDependency.dep().toString().split("/")[0];
				}
		}
		
		return noun;
	}
	
	public String getVerbFromUniversalDependencies(CoreMap sentence) {
		String verb = "";
		
		Tree tree = sentence.get(TreeAnnotation.class);
		TreebankLanguagePack tlp = new PennTreebankLanguagePack();
		GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
		GrammaticalStructure gs = gsf.newGrammaticalStructure(tree);
		Collection<TypedDependency> td = gs.typedDependenciesCollapsed();
//		System.out.println(td);

		Object[] list = td.toArray();
		TypedDependency typedDependency;
		for (Object object : list) {
			typedDependency = (TypedDependency) object;
//			System.out.println(typedDependency.dep().toString() + ": " + typedDependency.reln());
				if (typedDependency.reln().getShortName().equals("root") && typedDependency.dep().toString().split("/")[1].contains("VB")) {
				   System.out.println("VP FROM UNIV DEPENDENCIES: " + typedDependency.dep().toString().split("/")[0]);
				   verb = typedDependency.dep().toString().split("/")[0];
				}
		}
		
		return verb;
	}

	public static void dfs(Tree node) {
		if (node == null || node.isLeaf())
			return;

		// if node is a NP - Get the terminal nodes to get the words in the NP
//		if (node.value().equals("NP")) {
//			System.out.print("Noun Phrase is ");
//			List<Tree> leaves = node.getLeaves();
//
//			for (Tree leaf : leaves)
//				System.out.print(leaf.toString() + " ");
//			System.out.println();
//		}
		
		if (node.value().equals("VP")) {
			System.out.print("Verb Phrase is ");
			List<Tree> leaves = node.getLeaves();
			
			for (Tree leaf : leaves)
				System.out.print(leaf.toString() + " ");
			System.out.println();
		}

		for (Tree child : node.children())
			dfs(child);
	}
}
