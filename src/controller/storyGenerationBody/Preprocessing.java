package controller.storyGenerationBody;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.ToBeProcessed;

public class Preprocessing {
	private HashSet<String> stopwords;
	private ArrayList<ToBeProcessed> tbps;
	
	public Preprocessing(ArrayList<ToBeProcessed> tbps) throws IOException {
		this.tbps = tbps;
		
		initializeStopwords();
		removeStopwords();
		removeSpecialCharacters();
		
		//TODO: ADD CHECK IF POST IS TAGALOG
	}
	
	public void initializeStopwords() throws IOException {
		stopwords = new HashSet<String> ();
		
		BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\Robee Khyra Te\\Desktop\\thesis\\src\\controller\\storyGenerationBody\\stopwords.txt"));
		try {
		    String line = br.readLine();

		    while (line != null) {
		    	stopwords.add(line.toLowerCase());
		        line = br.readLine();
		    }
		} finally {
		    br.close();
		}
	}
	
	public void removeStopwords() {
		ArrayList<String> wordsList = new ArrayList<String>();
		
		for (int i = 0; i < tbps.size(); i++) {
			String[] words = tbps.get(i).getData().split(" ");
			String newTbps = "";
			
			for (String word : words) {
				String wordCompare = word.toLowerCase();
		        if(!stopwords.contains(wordCompare))
		        	wordsList.add(word);
			}
			
			for (String str : wordsList)
				newTbps += str + " ";
			
			tbps.get(i).setData(newTbps);
			
			wordsList.clear();
		}
	}
	
	public void removeSpecialCharacters() {		
		String newString = "";
		
		for (int i = 0; i < tbps.size(); i++) {
			try {
	            byte[] utf8Bytes = tbps.get(i).getData().getBytes("UTF-8");
	
	            newString = new String(utf8Bytes, "UTF-8");
	        } catch (UnsupportedEncodingException e) {
	            e.printStackTrace();
	        }
			
	        Pattern unicodeOutliers = Pattern.compile("[^\\x00-\\x7F]", Pattern.UNICODE_CASE | Pattern.CANON_EQ | Pattern.CASE_INSENSITIVE);
	        Matcher unicodeOutlierMatcher = unicodeOutliers.matcher(newString);
	
	        newString = unicodeOutlierMatcher.replaceAll("");
	        
	        newString = newString.replaceAll("(\\b\\w*?)(\\w)\\2{2,}(\\w*)", "$1$2$2$3");
	        newString = newString.replaceAll("(XD|xD|xd|Xd|<3|:3|:o|:O|:D|:d|(:|<|>|\\'|\\\"|\\^|\\*|_|\\-|\\=|\\{|\\}|`|~|\\[|\\]|[|]|[(]|[)]){2,})*", "");
	        
			//System.out.println("Final String " + newString);
			
			tbps.get(i).setData(newString);
		}
	}
	
	public ArrayList<ToBeProcessed> getUpdatedPosts() {
		return tbps;
	}
}
