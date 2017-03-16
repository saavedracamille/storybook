package controller.textUnderstanding;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.Label;
import edu.stanford.nlp.naturalli.NaturalLogicAnnotations;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.ie.util.RelationTriple;
import edu.stanford.nlp.ling.CoreAnnotations.NamedEntityTagAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.PartOfSpeechAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.SentencesAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TextAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TokensAnnotation;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.semgraph.SemanticGraph;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations.BasicDependenciesAnnotation;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations.CollapsedCCProcessedDependenciesAnnotation;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations.CollapsedDependenciesAnnotation;
import edu.stanford.nlp.trees.CollinsHeadFinder;
import edu.stanford.nlp.trees.GrammaticalRelation;
import edu.stanford.nlp.trees.HeadFinder;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.trees.TreeCoreAnnotations.TreeAnnotation;
import edu.stanford.nlp.trees.TypedDependency;
import edu.stanford.nlp.trees.tregex.TregexMatcher;
import edu.stanford.nlp.trees.tregex.TregexPattern;
import edu.stanford.nlp.util.CoreMap;
import models.ToBeProcessed;
import models.Token;
import modelsDAO.PartOfSpeechDAO;
import modelsDAO.ToBeProcessedDAO;
import modelsDAO.TokenDAO;

public class TextUnderstanding {

	private ArrayList<Token> tokens;

	public void performTextUnderstanding(ArrayList<ToBeProcessed> posts) {
		PartOfSpeechDAO posd = new PartOfSpeechDAO();
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		tokens = new ArrayList<Token>();

		Properties props = new Properties();
		props.put("annotators", "tokenize, ssplit, pos, lemma, ner, parse, dcoref");
		StanfordCoreNLP pipeline = new StanfordCoreNLP(props);

		for (int i = 0; i < posts.size(); i++) {
			String text = removeSpecialCharacters(posts.get(i).getData());
			Annotation document = new Annotation(posts.get(i).getData());
			pipeline.annotate(document);
			List<CoreMap> sentences = document.get(SentencesAnnotation.class);
			
			String verbPhrase = "";
			String nounPhrase = "";

			for (CoreMap sentence : sentences) {
				//for (CoreLabel token : sentence.get(TokensAnnotation.class)) {

					//String word = token.get(TextAnnotation.class);
					//String pos = token.get(PartOfSpeechAnnotation.class);
					//String ne = token.get(NamedEntityTagAnnotation.class);

					// System.out.println("word: " + word + "\n" +
					// " pos: " + pos + "\n" +
					// " ne: " + ne + "\n");

					// int posID = posd.getPosID(pos);

					// tokens.add(new Token(word, posID, post.getId()));
				//}
			
				LexicalizedParser lp = LexicalizedParser.loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
				Tree parse = lp.parse(sentence.toString());
				System.out.println("PARSER: " + parse);
				
				verbPhrase = getVerbPhrase(parse);
				nounPhrase = getNounPhrase(parse);
			}
			
			posts.get(i).setVerb(verbPhrase);
			posts.get(i).setNoun(nounPhrase);
		}
		
		//tk.addTokens(tokens);
		//tbpd.addVerb(posts);
		//tbpd.addNoun(posts);
	}
	
	public String getVerbPhrase(Tree parse) {
		String verbPhrase = "";
		Tree t;
		ArrayList<Tree> verbTrees = new ArrayList<Tree> ();
		
		do {
			t = null;
			TregexPattern pattern = TregexPattern.compile("VP");
            TregexMatcher matcher = pattern.matcher(parse);
            while (matcher.find()) {
            	parse = matcher.getMatch();
            	verbTrees.add(parse);
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
		
        verbPhrase += getActualVerbPhrase(parse);
        
        return verbPhrase;
	}
	
	public String getNounPhrase(Tree parse) {
		String nounPhrase = "";
		Tree t;
		
		do {
			t = null;
			TregexPattern pattern = TregexPattern.compile("NP");
            TregexMatcher matcher = pattern.matcher(parse);
            while (matcher.find()) {
            	parse = matcher.getMatch();
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
		
		nounPhrase += getActualNounPhrase(parse);
        
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
        
        System.out.println("the final stringbilder for verb phrase is: " + stringbuilder);
    	
    	return stringbuilder.toString();
	}
	
	public String getActualNounPhrase(Tree tree) {
		StringBuilder stringbuilder = new StringBuilder();
		List<Tree> leaves1 = tree.getChildrenAsList();
		
        for (Tree t : leaves1) {
	        String val = t.label().value();
	        if (val.equals("NN") || val.equals("NNS") || val.equals("NNP")
	                || val.equals("NNPS")) {
		    	ArrayList<Label> ss = t.yield();
		    	for (Label s : ss) {
		    		stringbuilder.append(s).append(" ");
		    	}
	        }
        }
        
        System.out.println("the final stringbilder for noun phrase is: " + stringbuilder);
    	
    	return stringbuilder.toString();
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

	public String removeSpecialCharacters(String data) {		
		String newString = "";
		
		try {
            byte[] utf8Bytes = data.getBytes("UTF-8");

            newString = new String(utf8Bytes, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
		
        Pattern unicodeOutliers = Pattern.compile("[^\\x00-\\x7F]", Pattern.UNICODE_CASE | Pattern.CANON_EQ | Pattern.CASE_INSENSITIVE);
        Matcher unicodeOutlierMatcher = unicodeOutliers.matcher(newString);

        newString = unicodeOutlierMatcher.replaceAll("");
        
        System.out.println("After remove special character: " + newString);
        
        newString = newString.replaceAll("(\\b\\w*?)(\\w)\\2{2,}(\\w*)", "$1$2$2$3");
        newString = newString.replaceAll("(X|D|x|d|0-9|<|>|\\'|:|@|#|$|%|\\^|&|\\*|_|\\+|\\-|\\=|\\{|\\}|`|~|\\[|\\]|[(]|[)]){2,}", "");
        
		System.out.println("Final String " + newString);

		return newString;
	}
}
