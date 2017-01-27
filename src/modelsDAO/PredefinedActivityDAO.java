package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbConnection.DatabaseConnection;
import models.PredefinedActivities;

public class PredefinedActivityDAO {
	private Connection conn;

	public PredefinedActivityDAO() {
		conn = DatabaseConnection.getConnection();
	}

	public void addPredefinedActivities(PredefinedActivities predefinedActivities) {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("INSERT INTO " + PredefinedActivities.TABLE_PA + " ("
					+ PredefinedActivities.COL_VERB + ", " + PredefinedActivities.COL_OBJECT + ", "
					+ PredefinedActivities.COL_TBPID + ") VALUES(?, ?, ?);");
			ps.setString(1, predefinedActivities.getVerb());
			ps.setString(2, predefinedActivities.getObject());
			ps.setInt(3, predefinedActivities.getTbpId());

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
	
	public void truncatePredefinedActivities() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + PredefinedActivities.TABLE_PA);
			
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
