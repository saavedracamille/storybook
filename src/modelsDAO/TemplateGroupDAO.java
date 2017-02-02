package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DatabaseConnection;
import models.TemplateGroup;

public class TemplateGroupDAO {
	private Connection conn;

	public TemplateGroupDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public int getGroupId(String production) {
		int groupId = -1;
		production = production.replace("<", "");
		production = production.replace(">", "");

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT id FROM " + TemplateGroup.TABLE_TEMPLATEGRP + " WHERE "
					+ TemplateGroup.COL_GRPNAME + " LIKE ?;");
			ps.setString(1, production);
			
			rs = ps.executeQuery();

			while (rs.next())
				groupId = rs.getInt(TemplateGroup.COL_ID);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return groupId;
	}
}
