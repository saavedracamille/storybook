package jsonParser;

import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.preProcessing.Preprocessing;
import models.CheckIn;
import models.ToBeProcessed;
import modelsDAO.ToBeProcessedDAO;

public class PostsJSON {
	private ArrayList<ToBeProcessed> posts;

	public PostsJSON(JSONArray data) {
		this.posts = getPosts(data);

		// printEverything(posts);
		addTBPDAO(posts);
	}

	public ArrayList<ToBeProcessed> getPosts(JSONArray data) {
		ArrayList<ToBeProcessed> posts = new ArrayList<ToBeProcessed>();
		Preprocessing p = null;
		
		try {
			p = new Preprocessing();
		} catch (IOException e) {
			e.printStackTrace();
		}

		for (int i = 0; i < data.size(); i++) {
			JSONArray postsArray = (JSONArray) data.get(i);

			for (int j = 0; j < postsArray.size(); j++) {
				ToBeProcessed tbp = new ToBeProcessed();
				CheckIn checkIn = new CheckIn();
				String tagged = "";

				JSONObject post = (JSONObject) postsArray.get(j);
				if (post.get("story") == null || !post.get("story").toString().contains("shared")) {
//					System.out.println(post.toJSONString());
					String message = "";
					if (post != null) {
						if (post.get("message") != null && !post.get("message").toString().equals("")) {
							//message = p.removeStopwords(post.get("message").toString());
							message = p.removeSpecialCharacters(post.get("message").toString());
							message = p.removeHashtags(message);

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
									String city = "";
									String country = "";
									if (location.get("city") != null) {
										city = location.get("city").toString();
										checkIn.setCity(city);
									}
									if (location.get("country") != null) {
										country = location.get("country").toString();
										checkIn.setCountry(country);
									}
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
			}
		}

		return posts;
	}

	public String getTaggedFriends(JSONArray dataTagged) {
		String taggedFriends = "";
		String connector = "";

		for (int i = 0; i < dataTagged.size(); i++) {
			JSONObject d = (JSONObject) dataTagged.get(i);
			if (d != null) {
				if (dataTagged.size() - 2 != i)
					connector = ", ";
				else
					connector = " and ";

				taggedFriends += d.get("name").toString() + connector;
			}
		}

		taggedFriends = taggedFriends.substring(0, taggedFriends.length() - 2);

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
			System.out.println("TAGGED: " + posts.get(i).getTagged());
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
