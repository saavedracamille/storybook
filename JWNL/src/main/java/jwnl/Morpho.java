package jwnl;

public class Morpho {
	public String sensekey1;
	public String offset1;
	public String relation;
	public String sensekey2;
	public String offset2;
	public String gloss1;
	public String gloss2;
	
	public Morpho() {}
	
	public Morpho(String sensekey1, String offset1, String relation, String sensekey2, String offset2, String gloss1, String gloss2) {
		this.sensekey1 = sensekey1;
		this.offset1 = offset1;
		this.relation = relation;
		this.sensekey2 = sensekey2;
		this.offset2 = offset2;
		this.gloss1 = gloss1;
		this.gloss2 = gloss2;
	}
	
	public String getSensekey1() {
		return sensekey1;
	}

	public void setSensekey1(String sensekey1) {
		this.sensekey1 = sensekey1;
	}

	public String getOffset1() {
		return offset1;
	}

	public void setOffset1(String offset1) {
		this.offset1 = offset1;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getSensekey2() {
		return sensekey2;
	}

	public void setSensekey2(String sensekey2) {
		this.sensekey2 = sensekey2;
	}

	public String getOffset2() {
		return offset2;
	}

	public void setOffset2(String offset2) {
		this.offset2 = offset2;
	}

	public String getGloss1() {
		return gloss1;
	}

	public void setGloss1(String gloss1) {
		this.gloss1 = gloss1;
	}

	public String getGloss2() {
		return gloss2;
	}

	public void setGloss2(String gloss2) {
		this.gloss2 = gloss2;
	}
}
