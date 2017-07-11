package objects;

import java.util.ArrayList;

public class Celebrate {
	private ArrayList<String> names;
	
	public Celebrate() {
		
	}
	
	public Celebrate(ArrayList<String> names) {
		this.names = names;
	}

	public ArrayList<String> getNames() {
		return names;
	}

	public void setNames(ArrayList<String> names) {
		this.names = names;
	}
}
