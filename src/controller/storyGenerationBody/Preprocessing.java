package controller.storyGenerationBody;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import models.ToBeProcessed;

public class Preprocessing {
	private HashSet<String> stopwords;
	private ArrayList<ToBeProcessed> tbps;
	
	public Preprocessing(ArrayList<ToBeProcessed> tbps) throws IOException {
		this.tbps = tbps;
		
		initializeStopwords();
		removeStopwords();
		
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
	
	public ArrayList<ToBeProcessed> getUpdatedPosts() {
		return tbps;
	}
}
