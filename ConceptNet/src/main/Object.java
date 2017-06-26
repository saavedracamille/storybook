package main;

public class Object {
	public String languageEnd;
	public String languageStart;
	public String relation;
	public String stringEnd;
	public String stringStart;
	
	public Object() {}
	
	public Object(String languageEnd, String languageStart, String relation, String stringEnd, String stringStart) {
		this.languageEnd = languageEnd;
		this.languageStart = languageStart;
		this.relation = relation;
		this.stringEnd = stringEnd;
		this.stringStart = stringStart;
	}	
	
	public String getLanguageStart() {
		return languageStart;
	}

	public void setLanguageStart(String languageStart) {
		this.languageStart = languageStart;
	}

	public String getLanguageEnd() {
		return languageEnd;
	}

	public void setLanguageEnd(String languageEnd) {
		this.languageEnd = languageEnd;
	}

	public String getStringStart() {
		return stringStart;
	}

	public void setStringStart(String stringStart) {
		this.stringStart = stringStart;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getStringEnd() {
		return stringEnd;
	}

	public void setStringEnd(String stringEnd) {
		this.stringEnd = stringEnd;
	}
}