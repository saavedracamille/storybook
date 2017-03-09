package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.Event;
import models.Family;
import models.Likes;
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
	
	public ArrayList<Event> getLatestGoing() {
		ArrayList<Event> goingEvents = new ArrayList<Event> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + Event.TABLE_EVENT + " WHERE "
					+ Event.COL_RSVP + " = \"attending\" LIMIT 5;");
			System.out.println("GET GOING EVENTS: " + ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				Event event = new Event();
				CheckIn checkIn = new CheckIn();
				
				event.setName(rs.getString(Event.COL_NAME));
				checkIn.setPlace(rs.getString(Event.COL_PLACE));
				checkIn.setCity(rs.getString(Event.COL_CITY));
				checkIn.setCountry(rs.getString(Event.COL_COUNTRY));
				event.setLocation(checkIn);
				
				goingEvents.add(event);
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
		
		return goingEvents;
	}
	
	public ArrayList<Event> getLatestInterested() {
		ArrayList<Event> interestedEvents = new ArrayList<Event> ();
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement("SELECT * FROM " + Event.TABLE_EVENT + " WHERE "
					+ Event.COL_RSVP + " = \"interested\" LIMIT 5;");
			System.out.println("GET INTERESTED EVENTS: " + ps);
			rs = ps.executeQuery();

			while (rs.next()) {
				Event event = new Event();
				CheckIn checkIn = new CheckIn();
				
				event.setName(rs.getString(Event.COL_NAME));
				checkIn.setPlace(rs.getString(Event.COL_PLACE));
				checkIn.setCity(rs.getString(Event.COL_CITY));
				checkIn.setCountry(rs.getString(Event.COL_COUNTRY));
				event.setLocation(checkIn);
				
				interestedEvents.add(event);
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
		
		return interestedEvents;
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
