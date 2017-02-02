package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.Family;
import models.Likes;

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
