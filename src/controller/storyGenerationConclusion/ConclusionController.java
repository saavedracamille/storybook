package controller.storyGenerationConclusion;

import java.util.ArrayList;

import modelsDAO.EventDAO;
import modelsDAO.LikesDAO;
import objects.EventGoing;
import objects.EventInterested;
import objects.Likes;

public class ConclusionController {
	private LikesDAO ld;
	private EventDAO ed;
	private ArrayList<Likes> likes;
	private ArrayList<EventGoing> goingEvents;
	private ArrayList<EventInterested> interestedEvents;
	
	public ConclusionController() {
		ld = new LikesDAO();
		ed = new EventDAO();
		
		initializeObjects();
	}
	
	public void initializeObjects() {
		initializeLikes();
		initializeGoingEvents();
		initializeInterestedEvents();
	}
	
	public void initializeLikes() {
		likes = new ArrayList<Likes> ();
		ArrayList<String> topCategories = ld.getTopFiveTypes();
		
		for (int i = 0; i < topCategories.size(); i++) {
			//TODO: get pages names from categories
		}
	}
	
	public void initializeGoingEvents() {
		goingEvents = new ArrayList<EventGoing> ();
		//TODO: new query, get only the name and location
	}

	public void initializeInterestedEvents() {
		interestedEvents = new ArrayList<EventInterested> ();
		//TODO: new query, get only the name and location
	}
}
