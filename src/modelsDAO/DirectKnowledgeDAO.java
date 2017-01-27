package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.DirectKnowledge;
import models.PredefinedActivities;

public class DirectKnowledgeDAO {
	private Connection conn;

	public DirectKnowledgeDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addDirectKnowledge(ArrayList<DirectKnowledge> directKnowledge) {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
		
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < directKnowledge.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + DirectKnowledge.TABLE_DK + " (" + DirectKnowledge.COL_DATA
						+ ", " + DirectKnowledge.COL_TYPE + ") VALUES(?, ?);");
				ps.setString(1, directKnowledge.get(i).getData());
				ps.setString(2, directKnowledge.get(i).getType());

				ps.execute();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void truncateDirectKnowledge() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + DirectKnowledge.TABLE_DK);

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
