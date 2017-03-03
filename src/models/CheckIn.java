package models;

public class CheckIn {
	private String place;
	private String city;
	private String country;
	
	public CheckIn() {

	}
	
	public CheckIn(String place, String city, String country) {
		this.place = place;
		this.city = city;
		this.country = country;
	}

	public String getPlace() {
		return place;
	}
	
	public void setPlace(String place) {
		this.place = place;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
}
