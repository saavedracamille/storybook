package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.DirectKnowledge;
import models.EducationalBackground;

public class EducationalBackgroundDAO {
	private Connection conn;

	public EducationalBackgroundDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void AddEducationalBackground(ArrayList<EducationalBackground> educationalBackground) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < educationalBackground.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + EducationalBackground.TABLE_EB + " ("
						+ EducationalBackground.COL_INSTITUTION + ", " + EducationalBackground.COL_TYPE + ", "
						+ EducationalBackground.COL_YRGRAD + ", " + EducationalBackground.COL_COURSE + ", "
						+ EducationalBackground.COL_FBID + ") VALUES(?, ?, ?, ?, ?);");
				ps.setString(1, educationalBackground.get(i).getInstitution());
				ps.setString(2, educationalBackground.get(i).getType());
				ps.setInt(3, educationalBackground.get(i).getYear_graduated());
				ps.setString(4, educationalBackground.get(i).getCourse());
				ps.setString(5, educationalBackground.get(i).getFbID());

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

	public void truncateEducationalBackground() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + EducationalBackground.TABLE_EB);

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
