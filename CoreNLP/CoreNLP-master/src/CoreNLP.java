import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.google.common.io.Files;

import edu.stanford.nlp.coref.CorefCoreAnnotations.CorefChainAnnotation;
import edu.stanford.nlp.coref.data.CorefChain;
import edu.stanford.nlp.ling.CoreAnnotations.NamedEntityTagAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.PartOfSpeechAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.SentencesAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TextAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.TokensAnnotation;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.semgraph.SemanticGraph;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations.CollapsedCCProcessedDependenciesAnnotation;
import edu.stanford.nlp.semgraph.SemanticGraphCoreAnnotations.CollapsedDependenciesAnnotation;
import edu.stanford.nlp.sentiment.SentimentCoreAnnotations;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.trees.TreeCoreAnnotations.TreeAnnotation;
import edu.stanford.nlp.util.CoreMap;

public class CoreNLP {
	public static void main(String[] args) throws IOException {
		Properties props = new Properties();
		props.put("annotators", "tokenize, ssplit, pos, lemma, ner, parse, dcoref, sentiment");
		StanfordCoreNLP pipeline = new StanfordCoreNLP(props);
		
		// reads text from file
		File inputFile = new File("resources/sample-content.txt");
	    String text = Files.toString(inputFile, Charset.forName("UTF-8"));
		
	    // creates an empty annotation with the given text
		Annotation document = new Annotation(text);
		
		// runs all annotators on this text
		pipeline.annotate(document);
		
		// contains all the sentences in the text
		List<CoreMap> sentences = document.get(SentencesAnnotation.class);
		
		for(CoreMap sentence: sentences) {
			// traversing the words in the current sentence
			for(CoreLabel token: sentence.get(TokensAnnotation.class)) {
				// this is the text of the token 
				String word = token.get(TextAnnotation.class);
				// this is the POS tag of the token
				String pos = token.get(PartOfSpeechAnnotation.class);
				// this is the NER label of the token
				String ne = token.get(NamedEntityTagAnnotation.class);
				
				System.out.println("word: " + word + '\n' + 
									" pos: " + pos + "'\n" + 
										" ne: " + ne + '\n');
			}
			
			// this is the sentiment of the current sentence
			String sentiment = sentence.get(SentimentCoreAnnotations.SentimentClass.class);
			System.out.println("sentiment:\n" + sentiment + '\n');
			
			// this is the parse tree of the current sentence
			Tree parseTree = sentence.get(TreeAnnotation.class);
			System.out.println("parse tree:\n" + parseTree + '\n');
			
			// this is the Stanford dependency graph of the current sentence
			SemanticGraph dependencies = sentence.get(CollapsedCCProcessedDependenciesAnnotation.class);
			System.out.println("dependency graph:\n" + dependencies);
		}
		
		// This is the coreference link graph
	    // Each chain stores a set of mentions that link to each other,
	    // along with a method for getting the most representative mention
	    // Both sentence and token offsets start at 1!
		Map<Integer, CorefChain> graph = document.get(CorefChainAnnotation.class);
		System.out.println("coreference graph:\n" + graph);
	}
}
