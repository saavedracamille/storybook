package jwnl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

import net.didion.jwnl.JWNL;
import net.didion.jwnl.JWNLException;
import net.didion.jwnl.data.IndexWord;
import net.didion.jwnl.data.POS;
import net.didion.jwnl.data.Synset;
import net.didion.jwnl.data.Word;
import net.didion.jwnl.dictionary.Dictionary;

public class Driver {
    public static void main(final String[] args) {
        try {
            /*
             * Read properties file and initialize the dictionary for lookup
             */
            JWNL.initialize(new FileInputStream("src/main/resources/properties.xml"));
            final Dictionary dictionary = Dictionary.getInstance();
            
            Xls xls = new Xls();
            ArrayList<Morpho> morphs = xls.getMorphList();
            
            int n = 0;
            n++;
            
            ArrayList<String> glossList1 = new ArrayList<String>();
            IndexWord indexWord = dictionary.lookupIndexWord(POS.VERB,"travel");
            int senseNum = 0;
            for(Synset synset: indexWord.getSenses()){
                senseNum++;
                String gloss = synset.getGloss();
                System.out.println("For sense: " + senseNum + " (" + gloss + ")");
                glossList1.add(gloss);
                Word[] words = synset.getWords();
                for(Word word: words){
                    System.out.println("\t"+word.getLemma()+"("+word.getPOS()+")"+"("+word.getSenseKey()+")");
                }
            }
            
            //get morphosemantic related words (verb-noun relation)
            ArrayList<String> glossList2 = getRelatedNouns(morphs, glossList1, n++);
                   
        }
        catch (final FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (final JWNLException e) {
            e.printStackTrace();
        }
    }
    
    public static ArrayList<String> getRelatedNouns(ArrayList<Morpho> morphs, ArrayList<String> glossList, int n) {
    	System.out.println();
        System.out.println("(" + n + ") " + "Getting morphosemantic related words...");
        
        ArrayList<String> glossListResult = new ArrayList<String>();
        
        int senseNum = 0;
        for(String gloss: glossList) {
        	senseNum++;
        	System.out.println("For sense: " + senseNum + " (" + gloss + ")");
        	glossListResult.add(gloss);
        	for(Morpho morpho: morphs) {
        		if(gloss.startsWith(morpho.getGloss1())) {
        			System.out.println("\t"+ morpho.getSensekey1() + " (" + morpho.getRelation() + ") " + morpho.getSensekey2() + "; " + morpho.getGloss2());
        		}
        	}
        }
        return glossListResult;
    }
    
}
