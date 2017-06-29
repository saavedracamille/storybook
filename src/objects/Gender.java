package objects;

public class Gender {
	private String gender;
	private String pronoun;
	
	public Gender() {
		
	}
	
	public Gender(String gender) {
		this.gender = gender;
		if("female".equalsIgnoreCase(gender))
			this.pronoun = "She";
		else
			this.pronoun = "He";
	}

	public String getGender() {
		return gender;
	}

	public String getPronoun() {
		return pronoun;
	}
	
}
