package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbConnection.DatabaseConnection;

public class PartOfSpeechDAO {
	private Connection conn;

	public PartOfSpeechDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}
	
	public int getPosID(String POS) {
		int pos = -1;
		
		PreparedStatement ps = null;
		
		try {
			ps = conn.prepareStatement("SELECT id FROM part_of_speech WHERE pos_value = ?;");
			ps.setString(1, POS);

			ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return pos;
	}
}
