package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.Event;
import models.ToBeProcessed;
import models.VerbObject;

public class VerbObjectDAO {
	private Connection conn;

	public VerbObjectDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addVerbObject(ArrayList<VerbObject> verbObjects) {
		PreparedStatement ps = null;

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

		try {
			for (int i = 0; i < verbObject.size(); i++) {
				Calendar cal = Calendar.getInstance();
				cal.setTime(verbObject.get(i).getDate());

				int month = cal.get(Calendar.MONTH);
				int day = cal.get(Calendar.DAY_OF_MONTH);
				int year = cal.get(Calendar.YEAR);
				
				ps = conn.prepareStatement("UPDATE " + VerbObject.TABLE_VO + " SET " + VerbObject.COL_PT + " = ?, "
						+ VerbObject.COL_TAGGED + " = ?, " + VerbObject.COL_LOCATION + " = ?, " + VerbObject.COL_DATE
						+ " = ?" + " WHERE " + VerbObject.COL_PI + " = ? AND " + VerbObject.COL_ID + " = ?;");
				ps.setString(1, verbObject.get(i).getPostType());
				ps.setString(2, verbObject.get(i).getTagged());
				ps.setString(3, verbObject.get(i).getLocation());
				ps.setString(4, month+"/"+day+"/"+year);
				ps.setInt(5, verbObject.get(i).getPi());
				ps.setInt(6, verbObject.get(i).getId());

				ps.execute();
			}
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

	public HashMap<Integer, HashMap<Integer, VerbObject>> getClassifiedPosts() {
		HashMap<Integer, HashMap<Integer, VerbObject>> verbObjects = new HashMap<Integer, HashMap<Integer, VerbObject>>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		PostTypeDAO ptd = new PostTypeDAO();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_PT + " <> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(VerbObject.COL_ID);
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
				String noun = rs.getString(VerbObject.COL_NOUN);
				String sentence = rs.getString(VerbObject.COL_SENTENCE);
				String postType = rs.getString(VerbObject.COL_PT);
				String tagged = rs.getString(VerbObject.COL_TAGGED);
				String location = rs.getString(VerbObject.COL_LOCATION);
				String date = rs.getString(VerbObject.COL_DATE);
				
				SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		        Date d = null;
				try {
					d = formatter.parse(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}

				String[] postTypes = postType.split(" ");

				for (int i = 0; i < postTypes.length; i++) {
					VerbObject vo = new VerbObject(id, postId, verb, noun, sentence, tagged, location, d);

					if (vo.getVerb() == null || vo.getVerb().equals("") || vo.getVerb().equals(" "))
						vo.setVerb(ptd.getVerb(Integer.parseInt(postTypes[i])));

					if (!verbObjects.containsKey(Integer.parseInt(postTypes[i]))) {
						HashMap<Integer, VerbObject> vos = new HashMap<Integer, VerbObject>();
						vos.put(postId, vo);
						verbObjects.put(Integer.parseInt(postTypes[i]), vos);
					} else {
						HashMap<Integer, VerbObject> temp = verbObjects.get(Integer.parseInt(postTypes[i]));
						temp.put(postId, vo);
						verbObjects.put(Integer.parseInt(postTypes[i]), temp);
					}
				}
			}
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
}
