package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.Family;
import models.Interest;
import models.Likes;
import models.Template;

public class LikesDAO {
	private Connection conn;

	public LikesDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addLikes(ArrayList<Likes> likes) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < likes.size(); i++) {
				for (int j = 0; j < likes.get(i).getInterest().size(); j++) {
					ps = conn.prepareStatement("INSERT INTO " + Interest.TABLE_LIKES + " (" + Interest.COL_INTEREST + ", "
							+ Interest.COL_TYPE + ", " + Interest.COL_FBID + ") VALUES(?, ?, ?);");
					ps.setString(1, likes.get(i).getInterest().get(j).getInterest());
					ps.setString(2, likes.get(i).getType());
					ps.setString(3, likes.get(i).getInterest().get(j).getFbID());
	
					ps.executeUpdate();
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
	}

	public ArrayList<String> getTopThreeTypes() {
		ArrayList<String> likesType = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + Interest.COL_TYPE + " FROM " + Interest.TABLE_LIKES + " GROUP BY ("
					+ Interest.COL_TYPE + ") ORDER BY COUNT(" + Interest.COL_TYPE + ") DESC LIMIT 3;");

			rs = ps.executeQuery();

			while (rs.next()) {
				likesType.add(rs.getString(Interest.COL_TYPE));
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

		return likesType;
	}
	
	public ArrayList<Interest> getTopThreeInterest(String category) {
		ArrayList<Interest> likedPages = new ArrayList<Interest> ();
	
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("SELECT * FROM " + Interest.TABLE_LIKES + " WHERE "
					+ Interest.COL_TYPE + " LIKE '%" + category + "' LIMIT 3;");

			rs = ps.executeQuery();

			while (rs.next()) {
				Interest interest = new Interest();
				interest.setId(rs.getInt(Interest.COL_ID));
				interest.setInterest(rs.getString(Interest.COL_INTEREST));
				interest.setFbID(rs.getString(Interest.COL_FBID));
				
				likedPages.add(interest);
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
		
		return likedPages;
	}

	public void truncateLikes() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Interest.TABLE_LIKES);

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
