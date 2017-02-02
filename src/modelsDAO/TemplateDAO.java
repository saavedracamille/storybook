package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.Template;

public class TemplateDAO {
	private Connection conn;

	public TemplateDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public ArrayList<String> getTemplates(int groupId, String col) {
		ArrayList<String> templates = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT template FROM " + Template.TABLE_TEMPLATE + " WHERE "
					+ Template.COL_TEMPLATEGRPID + " = ? AND " + col + " = ? ;");

			ps.setInt(1, groupId);
			ps.setInt(2, 1);
			
			System.out.println(ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				templates.add(rs.getString(Template.COL_TEMPLATE));
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

		return templates;
	}
}
