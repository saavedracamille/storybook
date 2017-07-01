package controller.preProcessing;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Preprocessing {
	private HashSet<String> stopwords;

	public Preprocessing() throws IOException {
//		initializeStopwords();
	}

	public void initializeStopwords() throws IOException {
		stopwords = new HashSet<String>();

		BufferedReader br = new BufferedReader(new FileReader(
				"C:\\Users\\Robee Khyra Te\\Desktop\\thesis\\src\\controller\\preProcessing\\stopwords.txt"));
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

	public String removeStopwords(String sentence) {
		ArrayList<String> wordsList = new ArrayList<String>();

		String[] words = sentence.split(" ");
		String newTbp = "";

		for (String word : words) {
			String wordCompare = word.toLowerCase();
			if (!stopwords.contains(wordCompare))
				wordsList.add(word);
		}

		for (String str : wordsList)
			newTbp += str + " ";

		return newTbp;
	}

	public String removeSpecialCharacters(String sentence) {
		String newString = "";

		try {
			byte[] utf8Bytes = sentence.getBytes("UTF-8");

			newString = new String(utf8Bytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		Pattern unicodeOutliers = Pattern.compile("[^\\x00-\\x7F]",
				Pattern.UNICODE_CASE | Pattern.CANON_EQ | Pattern.CASE_INSENSITIVE);
		Matcher unicodeOutlierMatcher = unicodeOutliers.matcher(newString);

		newString = unicodeOutlierMatcher.replaceAll("");

		newString = newString.replaceAll("(\\b\\w*?)(\\w)\\2{2,}(\\w*)", "$1$2$2$3");
		newString = newString.replaceAll(
				"(XD|xD|xd|Xd|<3|:3|:o|:O|:D|:d|(:|<|>|\\'|\\\"|\\^|\\*|_|\\-|\\=|\\{|\\}|`|~|\\[|\\]|[|]|[(]|[)]){2,})*",
				"");
		newString = newString.replaceAll("\\b[h|a|H|A]+\\b(?![,])", "");

//		System.out.println("Final String " + newString);

		return newString;
	}
	
	public String removeHashtags(String sentence) {
		String newString = "";
		
		newString = sentence.replaceAll(",\\s+#[A-Za-z]+", "");
		System.out.println("String without hashtags: " + newString);
		
		return newString;
	}
}
