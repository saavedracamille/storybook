package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.Family;
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
				ps = conn.prepareStatement("INSERT INTO " + Likes.TABLE_LIKES + " (" + Likes.COL_INTEREST + ", "
						+ Likes.COL_TYPE + ", " + Likes.COL_FBID + ") VALUES(?, ?, ?);");
				ps.setString(1, likes.get(i).getInterest());
				ps.setString(2, likes.get(i).getType());
				ps.setString(3, likes.get(i).getFbID());

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

	public ArrayList<String> getTopFiveTypes() {
		ArrayList<String> likesType = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + Likes.COL_TYPE + " FROM " + Likes.TABLE_LIKES + " GROUP BY ("
					+ Likes.COL_TYPE + ") ORDER BY COUNT (" + Likes.COL_TYPE + ") DESC LIMIT 5;");

			rs = ps.executeQuery();

			while (rs.next()) {
				likesType.add(rs.getString(Likes.COL_TYPE));
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
	
	public ArrayList<Likes> getTopFiveInterest(ArrayList<String> topFiveTypes) {
		ArrayList<Likes> likes = new ArrayList<Likes> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		for (int i = 0; i < topFiveTypes.size(); i++) {
			try {
				ps = conn.prepareStatement("SELECT " + Likes.COL_INTEREST + "," + Likes.COL_TYPE + " FROM " + Likes.TABLE_LIKES + " WHERE "
						+ Likes.COL_TYPE + " LIKE '% " + topFiveTypes.get(i) + "';");
	
				rs = ps.executeQuery();
	
				while (rs.next()) {
					likes.add(new Likes(rs.getString(Likes.COL_INTEREST), rs.getString(Likes.COL_TYPE)));
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
		
		return likes;
	}

	public void truncateLikes() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Likes.TABLE_LIKES);

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
