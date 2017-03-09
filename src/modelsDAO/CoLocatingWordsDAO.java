package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CoLocatingWords;
import models.PostType;

public class CoLocatingWordsDAO {
	private Connection conn;

	public CoLocatingWordsDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}
	
	public ArrayList<String> getAllCoLocatingWords() {
		ArrayList<String> coLocatingWords = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + CoLocatingWords.COL_WORD + " FROM " + CoLocatingWords.TABLE_CLW + ";");

			rs = ps.executeQuery();

			while (rs.next()) {
				String word = rs.getString(CoLocatingWords.COL_WORD);
				coLocatingWords.add(word);
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

		return coLocatingWords;
	}

	public ArrayList<String> getCoLocatingWords(int id) {
		ArrayList<String> coLocatingWords = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + CoLocatingWords.COL_WORD + " FROM " + CoLocatingWords.TABLE_CLW
					+ " WHERE " + CoLocatingWords.COL_PIT + " = ?" + ";");
			ps.setInt(1, id);
			System.out.println("GET ALL CO LOCATING WORDS BY ID SQL QUERY: " + ps);

			rs = ps.executeQuery();

			while (rs.next()) {
				String word = rs.getString(CoLocatingWords.COL_WORD);
				coLocatingWords.add(word);
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

		return coLocatingWords;
	}
	
	public int getPostTypeID(String coLocatingWord) {
		int postTypeID = -1;
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + CoLocatingWords.COL_PIT + " FROM " + CoLocatingWords.TABLE_CLW + " WHERE "
					+ CoLocatingWords.COL_WORD + " LIKE ?;");
			ps.setString(1, coLocatingWord);
			System.out.println("GET POST TYPE ID SQL QUERY: " + ps);

			rs = ps.executeQuery();

			while (rs.next()) {
				postTypeID = rs.getInt(CoLocatingWords.COL_PIT);
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
		
		return postTypeID;
	}
}
