package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	
	public HashMap<String, String> getVerbObjectsWithVerb() {
		HashMap<String, String> verbs = new HashMap<String, String>();
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_VERB + " <> \'\' AND " + VerbObject.COL_NOUN + " <> \'\';");
			System.out.println("GET POSTS WITH VERBS QUERY: " + ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
//				String noun = rs.getString(VerbObject.COL_NOUN);
//				String sentence = rs.getString(VerbObject.COL_SENTENCE);
				
				if (verb == null || !verb.equals("")) {
					if (!verbs.containsKey(verb))
						verbs.put(verb, String.valueOf(postId));
					else {
						String temp = verbs.get(verb) + ", " + String.valueOf(postId);
						verbs.put(verb, temp);
					}
				}

				//verbObjects.add(new VerbObject(postId, verb, noun, sentence));
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
	
	public ArrayList<VerbObject> getVerbObjectsWithNoVerb() {
		ArrayList<VerbObject> verbObjects = new ArrayList<VerbObject> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_VERB + " = \'\' OR " + VerbObject.COL_VERB + " IS NULL;");
			System.out.println("GET POSTS WITH VERBS QUERY: " + ps);
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
				ps = conn.prepareStatement("UPDATE " + VerbObject.TABLE_VO + " SET " + VerbObject.COL_PT
						+ " = ? " + " WHERE " + VerbObject.COL_ID + " = ?;");
				ps.setString(1, verbObject.get(i).getPostType());
				ps.setInt(2, verbObject.get(i).getId());

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
		HashMap<Integer, HashMap<Integer, VerbObject>> verbObjects = new HashMap<Integer, HashMap<Integer, VerbObject>> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		PostTypeDAO ptd = new PostTypeDAO();

		try {
			ps = conn.prepareStatement("SELECT * FROM " + VerbObject.TABLE_VO + " WHERE " + VerbObject.COL_PT + " <> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(VerbObject.COL_ID);
				int postId = rs.getInt(VerbObject.COL_PI);
				String verb = rs.getString(VerbObject.COL_VERB);
				String noun = rs.getString(VerbObject.COL_NOUN);
				String sentence = rs.getString(VerbObject.COL_SENTENCE);
				String postType = rs.getString(VerbObject.COL_PT);
				
				String[] postTypes = postType.split(" ");
				
				for (int i = 0; i < postTypes.length; i++) {
					VerbObject vo = new VerbObject(id, postId, verb, noun, sentence);
					
					if (vo.getVerb() == null || vo.getVerb().equals("") || vo.getVerb().equals(" "))
			        	vo.setVerb(ptd.getVerb(Integer.parseInt(postTypes[i])));
					
					if (!verbObjects.containsKey(Integer.parseInt(postTypes[i]))) {
						HashMap<Integer, VerbObject> vos = new HashMap<Integer, VerbObject> ();
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
