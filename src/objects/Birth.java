package objects;


public class Birth {
	private String birthday;
	private String place;
	
	public Birth() {
		
	}
	
	public Birth(String birthday, String place) {
		this.birthday = birthday;
		this.place = place;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}
}
