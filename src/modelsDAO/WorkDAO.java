package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.Family;
import models.Work;

public class WorkDAO {
	private Connection conn;

	public WorkDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addWorks(ArrayList<Work> works) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < works.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO " + Work.TABLE_WORK + " (" + Work.COL_INSTITUTION + ", "
						+ Work.COL_DATESTARTED + ", " + Work.COL_DATEENDED + ", " + Work.COL_LOCATION + ", "
						+ Work.COL_FBID + ") VALUES(?, ?, ?, ?, ?);");
				ps.setString(1, works.get(i).getInstitution());
				ps.setString(2, works.get(i).getDateStarted());
				ps.setString(3, works.get(i).getDateEnded());
				ps.setString(4, works.get(i).getLocation());
				ps.setString(5, works.get(i).getFbID());

				ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Work> getWorks() {
		ArrayList<Work> works = new ArrayList<Work>();

		ResultSet rs;
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + Work.TABLE_WORK + " ORDER BY " + Work.COL_DATESTARTED + " DESC;");
//			System.out.println("GET LATEST WORK QUERY: " + ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				works.add(new Work(rs.getString(Work.COL_INSTITUTION), rs.getString(Work.COL_DATESTARTED),
						rs.getString(Work.COL_DATEENDED), rs.getString(Work.COL_LOCATION)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return works;
	}

	public void truncateWork() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Work.TABLE_WORK);

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
