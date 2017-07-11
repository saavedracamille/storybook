package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map.Entry;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.ToBeProcessed;
import models.VerbObject;

public class VerbObjectDAO {
	private DatabaseConnection dc;
	private Connection conn;

	public VerbObjectDAO() {
		dc = new DatabaseConnection();
	}

	public void addVerbObject(ArrayList<VerbObject> verbObjects) {
		PreparedStatement ps = null;
		conn = dc.getConnection();

		try {
			for (int i = 0; i < verbObjects.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + VerbObject.TABLE_VO + " (" + VerbObject.COL_PI + ", "
						+ VerbObject.COL_VERB + ", " + VerbObject.COL_NOUN + ", " + VerbObject.COL_SENTENCE
						+ ") VALUES(?, ?, ?, ?);");
				ps.setInt(1, verbObjects.get(i).getPi());
				ps.setString(2, verbObjects.get(i).getVerb());
				ps.setString(3, verbObjects.get(i).getNoun());
				ps.setString(4, verbObjects.get(i).getSentence());

				ps.executeUpdate();
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public HashMap<String, ArrayList<VerbObject>> getVerbObjectsWithVerb() {
		HashMap<String, ArrayList<VerbObject>> verbs = new HashMap<String, ArrayList<VerbObject>>();
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject> ();
		VerbObject verbObject = null;

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_VERB
					+ " <> \'\' AND " + VerbObject.COL_NOUN + " <> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(VerbObject.COL_ID);
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
				String noun = rs.getString(VerbObject.COL_NOUN);
				String sentence = rs.getString(VerbObject.COL_SENTENCE);
				
				verbObject = new VerbObject(id, postId, verb, noun, sentence);

				if (verb == null || !verb.equals("")) {
					verbObjects.add(verbObject);
					if (!verbs.containsKey(verb))
						verbs.put(verb, verbObjects);
					else {
						verbObjects = verbs.get(verb);
						verbObjects.add(verbObject);
						verbs.put(verb, verbObjects);
					}
				}
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return verbs;
	}

	public ArrayList<VerbObject> getVerbObjects() {
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
//			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_VERB
//					+ " = \'\' OR " + VerbObject.COL_VERB + " IS NULL;");
			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + ";");
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(VerbObject.COL_ID);
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
				String noun = rs.getString(VerbObject.COL_NOUN);
				String sentence = rs.getString(VerbObject.COL_SENTENCE);

				verbObjects.add(new VerbObject(id, postId, verb, noun, sentence));
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return verbObjects;
	}

	public void addPostType(ArrayList<VerbObject> verbObject) {
		PreparedStatement ps = null;
		conn = dc.getConnection();

		try {
			for (int i = 0; i < verbObject.size(); i++) {
				ps = conn.prepareStatement("UPDATE " + VerbObject.TABLE_VO + " SET " + VerbObject.COL_PT + " = ?  WHERE " + VerbObject.COL_PI + " = ? AND " + VerbObject.COL_ID + " = ?;");
				ps.setString(1, verbObject.get(i).getPostType());
				ps.setInt(2, verbObject.get(i).getPi());
				ps.setInt(3, verbObject.get(i).getId());

				ps.execute();
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public HashMap<Integer, ArrayList<VerbObject>> getClassifiedPosts() {
		HashMap<Integer, ArrayList<VerbObject>> verbObjects = new HashMap<Integer, ArrayList<VerbObject>>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		PostTypeDAO ptd = new PostTypeDAO();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_PT + " <> \'\' AND " + VerbObject.COL_PT + " != 0;");
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(VerbObject.COL_ID);
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
				String noun = rs.getString(VerbObject.COL_NOUN);
				String sentence = rs.getString(VerbObject.COL_SENTENCE);
				String postType = rs.getString(VerbObject.COL_PT);
				
				boolean toPut = true;
				
//				String[] postTypes = null;
//				if (postType.contains(" "))
//					postTypes = postType.split(" ");
//
//				for (int i = 0; i < postTypes.length; i++) {
					VerbObject vo = new VerbObject(id, postId, verb, noun, sentence);

					if (vo.getVerb() == null || vo.getVerb().equals("") || vo.getVerb().equals(" "))
						vo.setVerb(ptd.getVerb(Integer.parseInt(postType)));

					if (!verbObjects.containsKey(Integer.parseInt(postType))) {
						ArrayList<VerbObject> vos = new ArrayList<VerbObject> ();
						vos.add(vo);
						verbObjects.put(Integer.parseInt(postType), vos);
					} else {
						ArrayList<VerbObject> temp = verbObjects.get(Integer.parseInt(postType));
						for (int i = 0; i < temp.size(); i++) {
							if (temp.get(i).getId() == vo.getId())
								toPut = false;
						}
						if (toPut)
							temp.add(vo);
						verbObjects.put(Integer.parseInt(postType), temp);
					}
//				}
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return verbObjects;
	}
	
	public HashMap<String, ArrayList<String>> getRestaurants() {
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		HashMap<String, ArrayList<String>> restaurants = new HashMap<String, ArrayList<String>> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();
		
		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_PT + " = 5 OR " + VerbObject.COL_PT + " = 2;");
			rs = ps.executeQuery();

			while (rs.next()) {
				ToBeProcessed tbp = tbpd.getPost(rs.getInt(VerbObject.COL_PI));
				CheckIn checkIn = tbp.getCheckIn();
				
				ArrayList<String> places = new ArrayList<String> ();
				
				if (checkIn.getCountry() != null) {
					if (!("").equals(checkIn.getPlace()) && !restaurants.containsKey(checkIn.getCity())) {
						places.add(checkIn.getPlace());
						restaurants.put(checkIn.getCity(), places);
					} else {
						places = restaurants.get(checkIn.getCity());
						places.add(checkIn.getPlace());
						restaurants.put(checkIn.getCity(), places);
					}
				}
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return restaurants;
	}
	
	public ArrayList<String> getCelebrants() {
		ArrayList<String> celebrants = new ArrayList<String> ();
		HashMap<String, Integer> tags = new HashMap<String, Integer> ();
		ArrayList<String> mostFreq = new ArrayList<String>();
		Entry<String, Integer> maxEntry = null;
		
		ToBeProcessedDAO tbpd = new ToBeProcessedDAO();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();
		
		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_PT + " = 2;");
			rs = ps.executeQuery();

			while (rs.next()) {
				String tagged = tbpd.getTagged(rs.getInt(VerbObject.COL_PI));
				
				if (tagged != null && !("").equals(tagged)) {
					String temp[] = null;
					String temp1[] = null;
					
					if (!tagged.contains(",") || !tagged.contains("and")) {
						celebrants.add(tagged);
					} else {
						if (tagged.contains(",")) {
							temp = tagged.split(", ");
							for (int j = 0; j < temp.length - 1; j++)
								celebrants.add(temp[j]);
						}
	
						if (tagged.contains("and")) {
							if (temp != null && temp.length != 0)
								temp1 = temp[temp.length - 1].split(" and ");
							else
								temp1 = tagged.split(" and ");
	
							if (temp1[0] != null)
								celebrants.add(temp1[0]);
							if (temp1[1] != null)
								celebrants.add(temp1[1]);
						}
					}
				}
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if (celebrants != null && !celebrants.isEmpty() && celebrants.size() != 0) {
			for (int j = 0; j < celebrants.size(); j++) {
				if (celebrants.get(j).startsWith(" "))
					celebrants.set(j, celebrants.get(j).substring(1, celebrants.get(j).length()));
				if (celebrants.get(j).endsWith(" "))
					celebrants.set(j, celebrants.get(j).substring(0, celebrants.get(j).length() - 1));
	
				if (tags.containsKey(celebrants.get(j))) {
					int count = tags.get(celebrants.get(j));
					count++;
					tags.put(celebrants.get(j), count);
				} else {
					tags.put(celebrants.get(j), 1);
				}
			}
		}
		
		for (Entry<String, Integer> entry : tags.entrySet())
			if (maxEntry == null || entry.getValue() > maxEntry.getValue())
				maxEntry = entry;
	
		if (maxEntry != null) {
			mostFreq.add(maxEntry.getKey());
	
			for (Entry<String, Integer> entry : tags.entrySet())
				if (entry.getValue() == maxEntry.getValue() && !mostFreq.contains(entry.getKey())) {
					mostFreq.add(entry.getKey());
				}
		}
		
		return mostFreq;
	}
}
