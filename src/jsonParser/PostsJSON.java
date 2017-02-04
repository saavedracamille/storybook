package jsonParser;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import models.CheckIn;
import models.ToBeProcessed;
import modelsDAO.ToBeProcessedDAO;

public class PostsJSON {
	private ArrayList<ToBeProcessed> posts;
	
	public PostsJSON(JSONArray data) {
		this.posts = getPosts(data);
		
		//printEverything(posts);
		addTBPDAO(posts);
	}
	
	public ArrayList<ToBeProcessed> getPosts(JSONArray data) {
		ArrayList<ToBeProcessed> posts = new ArrayList<ToBeProcessed> ();
		
		for (int i = 0; i < data.size(); i++) {
			JSONArray postsArray = (JSONArray) data.get(i);
			
			for (int j = 0; j < postsArray.size(); j++) {
				ToBeProcessed tbp = new ToBeProcessed();
				CheckIn checkIn = new CheckIn();
				ArrayList<String> tagged = new ArrayList<String> ();
				
				JSONObject post = (JSONObject) postsArray.get(j);
				String message = "";
				if (post != null) {
					if (post.get("message") != null) {
						message = post.get("message").toString();
					}
					
					String fbIDs[] = post.get("id").toString().split("_");
					String fbID = fbIDs[1];
					
					String updatedTime = post.get("updated_time").toString();
					String[] splitByT = updatedTime.split("T");
					String[] splitByDash = splitByT[0].split("-");
					String year = splitByDash[0];
					String month = splitByDash[1];
					String day = splitByDash[2];
					
					JSONObject place = (JSONObject) post.get("place");
					if (place != null) {
						String place_name = place.get("name").toString();
						
						JSONObject location = (JSONObject) place.get("location");
						if (location != null) {
							String city = location.get("city").toString();
							String country = location.get("country").toString();
							
							checkIn.setCity(city);
							checkIn.setCountry(country);
						}
						
						checkIn.setPlace(place_name);
					}
					
					JSONObject withTags = (JSONObject) post.get("with_tags");
					if (withTags != null) {
						JSONArray dataTagged = (JSONArray) withTags.get("data");
						if (dataTagged != null) {
							tagged = getTaggedFriends(dataTagged);
						}
					}
					
					tbp.setData(message);
					tbp.setFbID(fbID);
					tbp.setYear(year);
					tbp.setMonth(month);
					tbp.setDay(day);
					tbp.setCheckIn(checkIn);
					tbp.setTagged(tagged);
					
					posts.add(tbp);
				}
			}
		}
		
		return posts;
	}
	
	public ArrayList<String> getTaggedFriends(JSONArray dataTagged) {
		ArrayList<String> taggedFriends = new ArrayList<String> ();
		
		for (int i = 0; i < dataTagged.size(); i++) {
			JSONObject d = (JSONObject) dataTagged.get(i);
			if (d != null)
				taggedFriends.add(d.get("name").toString());
		}
		
		return taggedFriends;
	}
	
	public void addTBPDAO(ArrayList<ToBeProcessed> data) {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		tbpd.addToBeProcessedPost(data);
	}
	
	public void printEverything(ArrayList<ToBeProcessed> posts) {
		for (int i = 0; i < posts.size(); i++) {
			System.out.println("DATA: " + posts.get(i).getData());
			System.out.println("FB ID: " + posts.get(i).getFbID());
			for (int j = 0; j < posts.get(i).getTagged().size(); j++)
				System.out.println("TAGGED: " + posts.get(i).getTagged().get(j));
			CheckIn checkIn = posts.get(i).getCheckIn();
			System.out.println("PLACE: " + checkIn.getPlace());
			System.out.println("CITY: " + checkIn.getCity());
			System.out.println("COUNTRY: " + checkIn.getCountry());
			System.out.println("YEAR: " + posts.get(i).getYear());
			System.out.println("MONTH: " + posts.get(i).getMonth());
			System.out.println("DAY: " + posts.get(i).getDay());
		}
	}
}
