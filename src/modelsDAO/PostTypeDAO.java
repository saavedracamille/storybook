package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.PostType;
import models.Token;

public class PostTypeDAO {
	private Connection conn;

	public PostTypeDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public ArrayList<Integer> getCategoryIds() {
		ArrayList<Integer> categoryIds = new ArrayList<Integer>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + PostType.COL_ID + " FROM " + PostType.TABLE_PT + ";");
			//System.out.println("GET ALL GENERAL CATEGORIES SQL QUERY: " + ps);

			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(PostType.COL_ID);
				categoryIds.add(id);
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

		return categoryIds;
	}

	public String getSpecificCategory(int id) {
		String category = "";

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + PostType.COL_POST + " FROM " + PostType.TABLE_PT + " WHERE "
					+ PostType.COL_ID + " = ?;");
			ps.setInt(1, id);
			//System.out.println("GET SPECIFIC CATEGORY SQL QUERY: " + ps);

			rs = ps.executeQuery();

			while (rs.next()) {
				category = rs.getString(PostType.COL_POST);
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

		return category;
	}
}
