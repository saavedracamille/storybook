package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.DirectKnowledge;
import models.EducationalBackground;
import models.Family;

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

	public ArrayList<EducationalBackground> getEducations() {
		ArrayList<EducationalBackground> educations = new ArrayList<EducationalBackground>();

		ResultSet rs;
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + EducationalBackground.TABLE_EB);

			rs = ps.executeQuery();

			while (rs.next()) {
				educations.add(new EducationalBackground(rs.getString(EducationalBackground.COL_INSTITUTION),
						rs.getString(EducationalBackground.COL_TYPE), rs.getInt(EducationalBackground.COL_YRGRAD),
						rs.getString(EducationalBackground.COL_COURSE), rs.getString(EducationalBackground.COL_FBID)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return educations;
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
