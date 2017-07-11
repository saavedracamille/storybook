package objects;

import java.util.ArrayList;

public class Restaurants {
	private String city;
	private ArrayList<String> places;
	
	public Restaurants() {
		
	}
	
	public Restaurants(String city, ArrayList<String> places) {
		this.city = city;
		this.places = places;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public ArrayList<String> getPlaces() {
		return places;
	}

	public void setPlaces(ArrayList<String> places) {
		this.places = places;
	}
}
