package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.EducationalBackground;
import models.Family;

public class FamilyDAO {
	private Connection conn;

	public FamilyDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addFamily(ArrayList<Family> family) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < family.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + Family.TABLE_FAMILY + " (" + Family.COL_NAME + ", "
						+ Family.COL_RELATIONSHIP + ") VALUES(?, ?);");
				ps.setString(1, family.get(i).getName());
				ps.setString(2, family.get(i).getRelationship());
	
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

	public void truncateFamily() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Family.TABLE_FAMILY);

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
