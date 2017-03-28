package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.DirectKnowledge;
import models.PredefinedActivities;
import models.TemplateGroup;
import models.ToBeProcessed;

public class DirectKnowledgeDAO {
	private Connection conn;

	public DirectKnowledgeDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addDirectKnowledge(ArrayList<DirectKnowledge> directKnowledge) {
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
	
	public ArrayList<DirectKnowledge> getDirectKnowledge() {
		ArrayList<DirectKnowledge> directKnowledges = new ArrayList<DirectKnowledge>();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("SELECT * FROM " + DirectKnowledge.TABLE_DK + ";");
			
			rs = ps.executeQuery();

			while (rs.next()) {
				String data = rs.getString(DirectKnowledge.COL_DATA);
				String type = rs.getString(DirectKnowledge.COL_TYPE);
				
				directKnowledges.add(new DirectKnowledge(data, type));
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
		
		return directKnowledges;
	}
	
	public String getSpecificDirectKnowledge(String type) {
		String data = "";
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + DirectKnowledge.COL_DATA + " FROM " + DirectKnowledge.TABLE_DK + " WHERE " + DirectKnowledge.COL_TYPE + " = ?;");
			ps.setString(1, type);
			
			rs = ps.executeQuery();

			while (rs.next()) {
				data = rs.getString(DirectKnowledge.COL_DATA);
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
		
		return data;
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
