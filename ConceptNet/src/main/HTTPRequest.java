package main;

import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;

import org.apache.commons.io.IOUtils;
import org.json.*;

public class HTTPRequest {
    public static void main(String[] args) {
        try {
        	ArrayList<Object> objectList = new ArrayList<Object>();
        	
            String obj = "http://api.conceptnet.io/c/en/drink";
            HttpURLConnection hp = (HttpURLConnection) new URL(obj)
                    .openConnection();
            hp.setRequestMethod("GET");
            hp.setRequestProperty("Accept", "application/json");
            InputStream is = hp.getInputStream();
            
            String jsonText = IOUtils.toString(is, "UTF-8");
            JSONObject json = new JSONObject(jsonText);
            JSONArray edges = json.getJSONArray("edges");
            
        	for(int i = 0; i < edges.length(); i++) {
        		JSONObject edgeElement = edges.getJSONObject(i);
        		
        		JSONObject endElement = edgeElement.getJSONObject("end");
        		JSONObject startElement = edgeElement.getJSONObject("start");
        		JSONObject relElement = edgeElement.getJSONObject("rel");
        		
        		String languageEnd = endElement.getString("language");
        		String languageStart = startElement.getString("language");
        		String label = relElement.getString("label");
        		String stringEnd = endElement.getString("label");
        		String stringStart = startElement.getString("label");
        		
        		if((!languageEnd.equals(null) || languageEnd.equals("en")) &&
        				(!languageStart.equals(null) || languageStart.equals("en")) &&
        				!stringEnd.equals(null) && !stringStart.equals(null) && !label.equals(null)) {
        			Object object = new Object(languageEnd, languageStart, label, stringEnd, stringStart);
        			System.out.println(stringStart + " " + label + " " + stringEnd);
        			objectList.add(object);
        		}
        	}
            
        	saveToTextFile(objectList, "drink");
            is.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }
    
    public static void saveToTextFile(ArrayList<Object> objectList, String text) {
    	try {
    	    String filename= "keywords.txt";
    	    FileWriter fw = new FileWriter(filename,true);
    	    fw.write(text + "\n" + "\n");
    	    for(Object obj : objectList) {
    	    	if(!obj.stringEnd.equals(text)) {
    	    		fw.write(obj.stringEnd + "\n");
    	    	}
    	    	if(!obj.stringStart.equals(text)) {
    	    		fw.write(obj.stringStart + "\n");
    	    	}
    	    }
    	    fw.write("\n");
    	    fw.close();
    	}
    	catch(IOException ioe) {
    	    System.err.println("IOException: " + ioe.getMessage());
    	}
    }
}