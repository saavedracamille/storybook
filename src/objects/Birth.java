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
		String[] bday = birthday.split("\\/");
		String month = getMonth(bday[0]);
		String day = bday[1];
		String year = bday[2];
		
		this.birthday = month + " " + day + ", " + year;
//		this.birthday = birthday;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}
	
	public String getMonth(String m) {
		switch (m) {
			case "01": return "January";
			case "02": return "February";
			case "03": return "March";
			case "04": return "April";
			case "05": return "May";
			case "06": return "June";
			case "07": return "July";
			case "08": return "August";
			case "09": return "September";
			case "10": return "October";
			case "11": return "November";
			case "12": return "December";
		}

		return "month";
	}
}
