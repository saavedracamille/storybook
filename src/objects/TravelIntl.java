package objects;

import java.util.ArrayList;

public class TravelIntl {
	private ArrayList<String> countries;
	
	public TravelIntl() {
		
	}
	
	public TravelIntl(ArrayList<String> countries) {
		this.countries = countries;
	}

	public ArrayList<String> getCountries() {
		return countries;
	}

	public void setCountries(ArrayList<String> countries) {
		this.countries = countries;
	}
}
