package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.Event;
import models.Family;
import models.ToBeProcessed;

public class EventDAO {
	private Connection conn;

	public EventDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addEvents(ArrayList<Event> events) {
		PreparedStatement ps = null;

		try {
			for (int i = 0; i < events.size(); i++) {
				CheckIn checkIn = events.get(i).getLocation();
				ps = conn.prepareStatement("INSERT INTO " + Event.TABLE_EVENT + " (" + Event.COL_NAME + ", "
						+ Event.COL_RSVP + ", " + Event.COL_PLACE + ", " + Event.COL_CITY + ", " + Event.COL_COUNTRY + ", "
						+ Event.COL_FBID + ") VALUES(?, ?, ?, ?, ?, ?);");
				ps.setString(1, events.get(i).getName());
				ps.setString(2, events.get(i).getRsvp_status());
				ps.setString(3, checkIn.getPlace());
				ps.setString(4, checkIn.getCity());
				ps.setString(5, checkIn.getCountry());
				ps.setString(6, events.get(i).getFbID());
	
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
	
	public void truncateEvent() {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("TRUNCATE " + Event.TABLE_EVENT);

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
