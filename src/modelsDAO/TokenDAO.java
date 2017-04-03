package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import dbConnection.DatabaseConnection;
import models.ToBeProcessed;
import models.Token;

public class TokenDAO {
	private Connection conn;

	public TokenDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addTokens(ArrayList<Token> tokens) {
		PreparedStatement ps = null;

		for (int i = 0; i < tokens.size(); i++) {
			try {
				ps = conn.prepareStatement("INSERT INTO " + Token.TABLE_TOKEN + " (" + Token.COL_NAME + ", "
						+ Token.COL_POSID + ", " + Token.COL_TBPID + ") VALUES(?, ?, ?);");
				ps.setString(1, tokens.get(i).getName());
				ps.setInt(2, tokens.get(i).getPosID());
				ps.setInt(3, tokens.get(i).getTbpID());

				ps.executeUpdate();
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

	public HashMap<String, String> getAllVerbs() {
		HashMap<String, String> verbs = new HashMap<String, String>();

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT " + Token.COL_NAME + ", " + Token.COL_TBPID + " FROM " + Token.TABLE_TOKEN + " WHERE "
					+ Token.COL_POSID + " = 27 OR " + Token.COL_POSID + " = 28 OR " + Token.COL_POSID + " = 29 OR "
					+ Token.COL_POSID + " = 30 OR " + Token.COL_POSID + " = 31 OR " + Token.COL_POSID + " = 32;");
//			System.out.println("GET ALL VERBS SQL QUERY: " + ps);

			rs = ps.executeQuery();

			while (rs.next()) {
				String token = rs.getString(Token.COL_NAME);
				String post = String.valueOf(rs.getInt(Token.COL_TBPID));
				
				if (!verbs.containsKey(token))
					verbs.put(token, post);
				else {
					String temp = verbs.get(token) + ", " + post;
					verbs.put(token, temp);
				}
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

		return verbs;
	}

	public void truncateToken() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Token.TABLE_TOKEN);

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
