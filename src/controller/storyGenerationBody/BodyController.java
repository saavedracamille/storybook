package controller.storyGenerationBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import controller.textUnderstanding.TextUnderstanding;
import models.ToBeProcessed;
import models.VerbObject;
import modelsDAO.DirectKnowledgeDAO;
import modelsDAO.ToBeProcessedDAO;
import modelsDAO.VerbObjectDAO;
import objects.Celebrate;
import objects.Gender;
import objects.Restaurants;
import objects.TravelIntl;
import objects.TravelLocal;

public class BodyController {
	private DirectKnowledgeDAO dkd;
	private VerbObjectDAO vod;
	private ToBeProcessedDAO tbpd;
	private Gender gender;
	private ArrayList<ToBeProcessed> tbps = new ArrayList<ToBeProcessed>();
	private HashMap<Integer, ArrayList<VerbObject>> events;
	private ArrayList<TravelLocal> travelLocals;
	private TravelIntl travelIntl;
	private Celebrate celebrates;
	private ArrayList<Restaurants> restaurants;
	
	public Gender getGender() {
		return gender;
	}
	
	public HashMap<Integer, ArrayList<VerbObject>> getEvents() {
		return events;
	}
	
	public ArrayList<TravelLocal> getTravelLocals() {
		return travelLocals;
	}
	
	public TravelIntl getTravelIntl() {
		return travelIntl;
	}
	
	public Celebrate getCelebrates() {
		return celebrates;
	}
	
	public ArrayList<Restaurants> getRestaurants() {
		return restaurants;
	}
	
	public BodyController() {
		dkd = new DirectKnowledgeDAO();
		vod = new VerbObjectDAO();
		tbpd = new ToBeProcessedDAO();
		
		events = new HashMap<Integer, ArrayList<VerbObject>> ();
		travelLocals = new ArrayList<TravelLocal> ();
		restaurants = new ArrayList<Restaurants> ();
		
		this.tbps = tbpd.getAllPosts();
//
//		TextUnderstanding tu = new TextUnderstanding();
//		tu.performTextUnderstanding(tbps);

//		EventClassification ec = new EventClassification();
//		ec.performEventClassification(tbps);
		
		initializeObjects();
	}
	
	public void initializeObjects() {
		initializeGender();
		initializeEvents();
		initializeCelebrate();
		initializeTravelLocal();
		initializeTravelIntl();
		initializeRestaurants();
	}
	
	public String generateBody() {
		String conclusion = "";
		
		GenerateBody2 gb2 = new GenerateBody2();
		conclusion = gb2.generateBody(this);
		
		return conclusion;
	}
	
	public void initializeGender() {
		String g = dkd.getSpecificDirectKnowledge("gender");
		gender = new Gender(g);
	}
	
	public void initializeEvents() {
		events = vod.getClassifiedPosts();
	}
	
	public void initializeTravelLocal() {
		String location = dkd.getSpecificDirectKnowledge("location");
		
		HashMap<String, ArrayList<String>> locals = tbpd.getLocalPlaces(location);
		
		for (Map.Entry<String, ArrayList<String>> entry : locals.entrySet()) {
		    TravelLocal tl = new TravelLocal(entry.getKey(), entry.getValue());
		    travelLocals.add(tl);
		}
	}
	
	public void initializeTravelIntl() {
		String location = dkd.getSpecificDirectKnowledge("location");
		
		travelIntl = new TravelIntl(tbpd.getCountries(location));
	}
	
	public void initializeCelebrate() {
		celebrates = new Celebrate(vod.getCelebrants());
	}
	
	public void initializeRestaurants() {
		HashMap<String, ArrayList<String>> rest = vod.getRestaurants();
		
		for (Map.Entry<String, ArrayList<String>> entry : rest.entrySet()) {
		    Restaurants r = new Restaurants(entry.getKey(), entry.getValue());
		    restaurants.add(r);
		}
	}
}
