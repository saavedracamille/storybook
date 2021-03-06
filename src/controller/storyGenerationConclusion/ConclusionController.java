package controller.storyGenerationConclusion;

import java.util.ArrayList;

import models.Event;
import models.Likes;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.EventDAO;
import modelsDAO.LikesDAO;
import objects.Gender;

public class ConclusionController {
	
	private DirectKnowledgeDAO dkd;
	private LikesDAO ld;
	private EventDAO ed;
	private Gender gender;
	private ArrayList<Likes> likes;
	private ArrayList<Event> goingEvents;
	private ArrayList<Event> interestedEvents;
	
	public Gender getGender() {
		return gender;
	}
	
	public ArrayList<Likes> getLikes() {
		return likes;
	}

	public ArrayList<Event> getGoingEvents() {
		return goingEvents;
	}

	public ArrayList<Event> getInterestedEvents() {
		return interestedEvents;
	}

	/**
	 * initializes DAOs
	 */	
	public ConclusionController() {
		dkd = new DirectKnowledgeDAO();
		ld = new LikesDAO();
		ed = new EventDAO();
		
		initializeObjects();
	}
	
	/**
	 * initializes objects
	 */	
	public void initializeObjects() {
		initializeGender();
		initializeLikes();
		initializeGoingEvents();
		initializeInterestedEvents();
		
		generateConclusion();
	}
	/**
	 * initializes and calls generateConclusion to create an conclusion paragraph
	 * @returns conclusion paragraph
	 */	
	public String generateConclusion() {
		String conclusion = "";
		
		GenerateConclusion2 gc2 = new GenerateConclusion2();
		conclusion = gc2.generateConclusion(this);
//		gc2.LikesPhrase(likes);
//		gc2.EventGoingPhrase(goingEvents);
//		gc2.EventInterested(interestedEvents);
		
		return conclusion;
	}
	

	/**
	 * Method initializes the gender pronoun
	 * */
	public void initializeGender() {
		String g = dkd.getSpecificDirectKnowledge("gender");
		gender = new Gender(g);
	}
	
	
	/** 
	 * Method initializes the array list of Likes object containing only the top three categories with the most liked pages.
	 */
	public void initializeLikes() {
		likes = new ArrayList<Likes> ();
		
		ArrayList<String> topCategories = ld.getTopThreeTypes();
		
		for (int i = 0; i < topCategories.size(); i++) {
			Likes like = new Likes();
			
			like.setType(topCategories.get(i));
			like.setInterest(ld.getTopThreeInterest(topCategories.get(i)));
			
			likes.add(like);
		}
	}
	
	/**
	 * Method initializes the array list of Events object containing only the latest events ticked going.
	 * */
	public void initializeGoingEvents() {
		goingEvents = new ArrayList<Event> ();
		goingEvents = ed.getTopThreeGoing();
	}


	/**
	 * Method initializes the array list of Events object containing only the latest events ticked interested.
	 * */
	public void initializeInterestedEvents() {
		interestedEvents = new ArrayList<Event> ();
		interestedEvents = ed.getTopThreeInterested();
	}
}
