package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.Family;
import models.Likes;
import models.ToBeProcessed;

public class ToBeProcessedDAO {
	private Connection conn;

	public ToBeProcessedDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addToBeProcessedPost(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				CheckIn checkIn = toBeProcessed.get(i).getCheckIn();
				ArrayList<String> tagged = toBeProcessed.get(i).getTagged();
				String tags = "";
				for (int j = 0; j < tagged.size(); j++)
					tags += tagged.get(j) + ", ";
				
				ps = conn.prepareStatement("INSERT INTO " + ToBeProcessed.TABLE_TBP + " (" + ToBeProcessed.COL_DATA + ", "
						+ ToBeProcessed.COL_FBID + ", " + ToBeProcessed.COL_TAGGED + ", " + ToBeProcessed.COL_PLACE + ", "
						+ ToBeProcessed.COL_CITY + ", " + ToBeProcessed.COL_COUNTRY + ", " + ToBeProcessed.COL_YEAR + ", "
						+ ToBeProcessed.COL_MONTH + ", " + ToBeProcessed.COL_DAY + ") VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);");
				ps.setString(1, toBeProcessed.get(i).getData());
				ps.setString(2, toBeProcessed.get(i).getFbID());
				ps.setString(3, tags);
				ps.setString(4, checkIn.getPlace());
				ps.setString(5, checkIn.getCity());
				ps.setString(6, checkIn.getCountry());
				ps.setString(7, toBeProcessed.get(i).getYear());
				ps.setString(8, toBeProcessed.get(i).getMonth());
				ps.setString(9, toBeProcessed.get(i).getDay());
	
				ps.execute();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		}
	}

	public void truncateToBeProcessedPost() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + ToBeProcessed.TABLE_TBP);

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
