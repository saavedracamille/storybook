package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

	public void addFamilies(ArrayList<Family> family) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < family.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + Family.TABLE_FAMILY + " (" + Family.COL_NAME + ", "
						+ Family.COL_RELATIONSHIP + ", " + Family.COL_FBID + ") VALUES(?, ?, ?);");
				ps.setString(1, family.get(i).getName());
				ps.setString(2, family.get(i).getRelationship());
				ps.setString(3, family.get(i).getFbID());
	
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
	
	public ArrayList<Family> getFamilies() {
		ArrayList<Family> families = new ArrayList<Family> ();
		
		ResultSet rs;
		PreparedStatement ps = null;
		
		try {
			ps = conn.prepareStatement("SELECT * FROM " + Family.TABLE_FAMILY);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				families.add(new Family(rs.getString(Family.COL_NAME), rs.getString(Family.COL_RELATIONSHIP)));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return families;
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
