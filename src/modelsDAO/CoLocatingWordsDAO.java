package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CoLocatingWords;

public class CoLocatingWordsDAO {
	private Connection conn;

	public CoLocatingWordsDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public ArrayList<String> getCoLocatingWords(int id) {
		ArrayList<String> coLocatingWords = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + CoLocatingWords.COL_WORD + " FROM " + CoLocatingWords.TABLE_CLW
					+ " WHERE " + CoLocatingWords.COL_GCID + " = ?" + ";");
			ps.setInt(1, id);
			System.out.println("GET ALL CO LOCATING WORDS SQL QUERY: " + ps);

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
}
