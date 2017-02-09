package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
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
