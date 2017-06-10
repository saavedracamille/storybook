package jsonParser;

import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.preProcessing.Preprocessing;
import models.CheckIn;
import models.Event;
import modelsDAO.EventDAO;

public class EventsJSON {
	private ArrayList<Event> events;
	
	public EventsJSON(JSONArray data){
		this.events = getEvents(data);
		
		//printEverything(events);
		addToEventsDAO(events);
	}
	
	public ArrayList<Event> getEvents(JSONArray data) {
		ArrayList<Event> allEvents = new ArrayList<Event> ();
		Preprocessing p = null;
		try {
			p = new Preprocessing();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		for (int i = 0; i < data.size(); i++) {
			JSONArray eventArray = (JSONArray) data.get(i);
			
			for (int j = 0; j < eventArray.size(); j++) {
				Event event = new Event();
				CheckIn checkIn = new CheckIn();
				
				JSONObject events = (JSONObject) eventArray.get(j);
				
				if (events != null) {
					String name = p.removeSpecialCharacters(events.get("name").toString());
					String rsvp_status = events.get("rsvp_status").toString();
					String fbID = events.get("id").toString();
					
					JSONObject place = (JSONObject) events.get("place");
					
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
					
					event.setName(name);
					event.setRsvp_status(rsvp_status);
					event.setFbID(fbID);
					event.setLocation(checkIn);
				}
				
				allEvents.add(event);
			}
		}
		
		return allEvents;
	}
	
	public void addToEventsDAO(ArrayList<Event> events) {
		EventDAO ed = new EventDAO();
		ed.addEvents(events);
	}
	
	public void printEverything(ArrayList<Event> events) {
		for(int i = 0; i < events.size(); i++) {
			System.out.println("NAME: " + events.get(i).getName());
			System.out.println("RSVP: " + events.get(i).getRsvp_status());
			CheckIn checkIn = events.get(i).getLocation();
			System.out.println("PLACE: " + checkIn.getPlace());
			System.out.println("CITY: " + checkIn.getCity());
			System.out.println("COUNTRY: " + checkIn.getCountry());
		}
	}
 }
