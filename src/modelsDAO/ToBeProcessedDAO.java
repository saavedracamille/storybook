package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.DirectKnowledge;
import models.Family;
import models.Likes;
import models.ToBeProcessed;
import models.Token;

public class ToBeProcessedDAO {
	private Connection conn;

	public ToBeProcessedDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addToBeProcessedPost(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				CheckIn checkIn = toBeProcessed.get(i).getCheckIn();
				String tagged = toBeProcessed.get(i).getTagged();

				ps = conn.prepareStatement("INSERT INTO " + ToBeProcessed.TABLE_TBP + " (" + ToBeProcessed.COL_DATA
						+ ", " + ToBeProcessed.COL_FBID + ", " + ToBeProcessed.COL_TAGGED + ", "
						+ ToBeProcessed.COL_PLACE + ", " + ToBeProcessed.COL_CITY + ", " + ToBeProcessed.COL_COUNTRY
						+ ", " + ToBeProcessed.COL_YEAR + ", " + ToBeProcessed.COL_MONTH + ", " + ToBeProcessed.COL_DAY
						+ ") VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);");
				ps.setString(1, toBeProcessed.get(i).getData());
				ps.setString(2, toBeProcessed.get(i).getFbID());
				ps.setString(3, tagged);
				ps.setString(4, checkIn.getPlace());
				ps.setString(5, checkIn.getCity());
				ps.setString(6, checkIn.getCountry());
				ps.setString(7, toBeProcessed.get(i).getYear());
				ps.setString(8, toBeProcessed.get(i).getMonth());
				ps.setString(9, toBeProcessed.get(i).getDay());

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

	public void addVerb(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET " + ToBeProcessed.COL_VERB
						+ " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
				ps.setString(1, toBeProcessed.get(i).getVerb());
				ps.setInt(2, toBeProcessed.get(i).getId());

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
	
	public void addNoun(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET " + ToBeProcessed.COL_NOUN
						+ " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
				ps.setString(1, toBeProcessed.get(i).getNoun());
				ps.setInt(2, toBeProcessed.get(i).getId());

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
	
	public void addPostType(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET " + ToBeProcessed.COL_PT
						+ " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
				ps.setInt(1, toBeProcessed.get(i).getPostType());
				ps.setInt(2, toBeProcessed.get(i).getId());
				//System.out.println("ADD POST TYPE QUERY: " + ps);

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
	
	public ArrayList<ToBeProcessed> getAllPostsWithVerbs() {
		ArrayList<ToBeProcessed> verbPosts = new ArrayList<ToBeProcessed>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_VERB + "<> \'\';");
			System.out.println("GET POSTS WITH VERBS QUERY: " + ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(ToBeProcessed.COL_ID);
				String data = rs.getString(ToBeProcessed.COL_DATA);
				String fbID = rs.getString(ToBeProcessed.COL_FBID);
				String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);
				CheckIn checkIn = new CheckIn(place, city, country);
				String year = rs.getString(ToBeProcessed.COL_YEAR);
				String month = rs.getString(ToBeProcessed.COL_MONTH);
				String day = rs.getString(ToBeProcessed.COL_DAY);

				verbPosts.add(new ToBeProcessed(id, data, fbID, tagged, checkIn, year, month, day));
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

		return verbPosts;
	}

	public ArrayList<ToBeProcessed> getAllPosts() {
		ArrayList<ToBeProcessed> posts = new ArrayList<ToBeProcessed>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + ";");

			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(ToBeProcessed.COL_ID);
				String data = rs.getString(ToBeProcessed.COL_DATA);
				String fbID = rs.getString(ToBeProcessed.COL_FBID);
				String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);
				CheckIn checkIn = new CheckIn(place, city, country);
				String year = rs.getString(ToBeProcessed.COL_YEAR);
				String month = rs.getString(ToBeProcessed.COL_MONTH);
				String day = rs.getString(ToBeProcessed.COL_DAY);

				posts.add(new ToBeProcessed(id, data, fbID, tagged, checkIn, year, month, day));
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

		return posts;
	}

	public String getPost(int id) {
		String tbp = "";

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + ToBeProcessed.COL_DATA + " FROM " + ToBeProcessed.TABLE_TBP
					+ " WHERE " + ToBeProcessed.COL_ID + " = ?;");

			rs = ps.executeQuery();

			while (rs.next()) {
				tbp = rs.getString(ToBeProcessed.COL_DATA);
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

		return tbp;
	}
	
	public HashMap<String, String> getAllVerbs() {
		HashMap<String, String> verbs = new HashMap<String, String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + ";");

			rs = ps.executeQuery();

			while (rs.next()) {
				String verb = rs.getString(ToBeProcessed.COL_VERB);
				String post = String.valueOf(rs.getInt(ToBeProcessed.COL_ID));
				
				if (!verb.equals("")) {
					if (!verbs.containsKey(verb))
						verbs.put(verb, post);
					else {
						String temp = verbs.get(verb) + ", " + post;
						verbs.put(verb, temp);
					}
				}
				
//				if (!verb.equals(""))
//					verbs.add(verb);
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

	public void truncateToBeProcessedPost() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + ToBeProcessed.TABLE_TBP);

			ps.execute();
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
}
