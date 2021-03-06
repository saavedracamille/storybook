package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import dbConnection.DatabaseConnection;
import models.CheckIn;
import models.ToBeProcessed;

public class ToBeProcessedDAO {
	private DatabaseConnection dc;
	private Connection conn;

	public ToBeProcessedDAO() {
		dc = new DatabaseConnection();
	}

	public void addToBeProcessedPost(ArrayList<ToBeProcessed> toBeProcessed) {
		PreparedStatement ps = null;
		conn = dc.getConnection();

		try {
			for (int i = 0; i < toBeProcessed.size(); i++) {
				CheckIn checkIn = toBeProcessed.get(i).getCheckIn();
				String tagged = toBeProcessed.get(i).getTagged();

				ps = conn.prepareStatement("INSERT INTO " + ToBeProcessed.TABLE_TBP + " (" + ToBeProcessed.COL_DATA
						+ ", " + ToBeProcessed.COL_FBID + ", " + ToBeProcessed.COL_TAGGED + ", "
						+ ToBeProcessed.COL_PLACE + ", " + ToBeProcessed.COL_CITY + ", " + ToBeProcessed.COL_COUNTRY
						+ ", " + ToBeProcessed.COL_YEAR + ", " + ToBeProcessed.COL_MONTH + ", " + ToBeProcessed.COL_DAY
						+ ") VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);");
				ps.setString(1, toBeProcessed.get(i).getData());
				ps.setString(2, toBeProcessed.get(i).getFbID());
				ps.setString(3, tagged);
				ps.setString(4, checkIn.getPlace());
				ps.setString(5, checkIn.getCity());
				ps.setString(6, checkIn.getCountry());
				ps.setString(7, toBeProcessed.get(i).getYear());
				ps.setString(8, toBeProcessed.get(i).getMonth());
				ps.setString(9, toBeProcessed.get(i).getDay());

				ps.execute();
			}
			conn.close();
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

	// public void addVerb(ArrayList<ToBeProcessed> toBeProcessed) {
	// PreparedStatement ps = null;
	//
	// try {
	// for (int i = 0; i < toBeProcessed.size(); i++) {
	// if (!toBeProcessed.get(i).getVerb().equals("")) {
	// ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET "
	// + ToBeProcessed.COL_VERB
	// + " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
	// ps.setString(1, toBeProcessed.get(i).getVerb());
	// ps.setInt(2, toBeProcessed.get(i).getId());
	// //System.out.println("ADD VERB SQL: " + ps);
	//
	// ps.execute();
	// }
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	// }
	//
	// public void addNoun(ArrayList<ToBeProcessed> toBeProcessed) {
	// PreparedStatement ps = null;
	//
	// try {
	// for (int i = 0; i < toBeProcessed.size(); i++) {
	// ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET "
	// + ToBeProcessed.COL_NOUN
	// + " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
	// ps.setString(1, toBeProcessed.get(i).getNoun());
	// ps.setInt(2, toBeProcessed.get(i).getId());
	//
	// ps.execute();
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	// }
	//
	// public void addPostType(ArrayList<ToBeProcessed> toBeProcessed) {
	// PreparedStatement ps = null;
	//
	// try {
	// for (int i = 0; i < toBeProcessed.size(); i++) {
	// ps = conn.prepareStatement("UPDATE " + ToBeProcessed.TABLE_TBP + " SET "
	// + ToBeProcessed.COL_PT
	// + " = ? " + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
	// ps.setString(1, toBeProcessed.get(i).getPostType());
	// ps.setInt(2, toBeProcessed.get(i).getId());
	// //System.out.println("ADD POST TYPE QUERY: " + ps);
	//
	// ps.execute();
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	// }

	// public ArrayList<ToBeProcessed> getAllPostsWithVerbs() {
	// ArrayList<ToBeProcessed> verbPosts = new ArrayList<ToBeProcessed>();
	//
	// PreparedStatement ps = null;
	// ResultSet rs = null;
	//
	// try {
	// ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + "
	// WHERE " + ToBeProcessed.COL_VERB + " <> \'\';");
	// System.out.println("GET POSTS WITH VERBS QUERY: " + ps);
	// rs = ps.executeQuery();
	//
	// while (rs.next()) {
	// int id = rs.getInt(ToBeProcessed.COL_ID);
	// String data = rs.getString(ToBeProcessed.COL_DATA);
	// String fbID = rs.getString(ToBeProcessed.COL_FBID);
	// String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
	// String place = rs.getString(ToBeProcessed.COL_PLACE);
	// String city = rs.getString(ToBeProcessed.COL_CITY);
	// String country = rs.getString(ToBeProcessed.COL_COUNTRY);
	// CheckIn checkIn = new CheckIn(place, city, country);
	// String year = rs.getString(ToBeProcessed.COL_YEAR);
	// String month = rs.getString(ToBeProcessed.COL_MONTH);
	// String day = rs.getString(ToBeProcessed.COL_DAY);
	//
	// verbPosts.add(new ToBeProcessed(id, data, fbID, tagged, checkIn, year,
	// month, day));
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	//
	// return verbPosts;
	// }
	//
	// public ArrayList<ToBeProcessed> getAllPostsWithNoVerbs() {
	// ArrayList<ToBeProcessed> noVerbPosts = new ArrayList<ToBeProcessed>();
	//
	// PreparedStatement ps = null;
	// ResultSet rs = null;
	//
	// try {
	// ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + "
	// WHERE " + ToBeProcessed.COL_VERB + " = \'\' OR " + ToBeProcessed.COL_VERB
	// + " IS NULL;");
	// System.out.println("GET POSTS WITH NO VERBS QUERY: " + ps);
	// rs = ps.executeQuery();
	//
	// while (rs.next()) {
	// int id = rs.getInt(ToBeProcessed.COL_ID);
	// String data = rs.getString(ToBeProcessed.COL_DATA);
	// String fbID = rs.getString(ToBeProcessed.COL_FBID);
	// String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
	// String place = rs.getString(ToBeProcessed.COL_PLACE);
	// String city = rs.getString(ToBeProcessed.COL_CITY);
	// String country = rs.getString(ToBeProcessed.COL_COUNTRY);
	// CheckIn checkIn = new CheckIn(place, city, country);
	// String year = rs.getString(ToBeProcessed.COL_YEAR);
	// String month = rs.getString(ToBeProcessed.COL_MONTH);
	// String day = rs.getString(ToBeProcessed.COL_DAY);
	// String verb = rs.getString(ToBeProcessed.COL_VERB);
	// String noun = rs.getString(ToBeProcessed.COL_NOUN);
	// String postType = rs.getString(ToBeProcessed.COL_PT);
	//
	// noVerbPosts.add(new ToBeProcessed(id, data, fbID, tagged, checkIn, year,
	// month, day, verb, noun, postType));
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	//
	// return noVerbPosts;
	// }

	public ArrayList<ToBeProcessed> getAllPosts() {
		ArrayList<ToBeProcessed> posts = new ArrayList<ToBeProcessed>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP + ";");

			rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt(ToBeProcessed.COL_ID);
				String data = rs.getString(ToBeProcessed.COL_DATA);
				String fbID = rs.getString(ToBeProcessed.COL_FBID);
				String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);
				CheckIn checkIn = new CheckIn(place, city, country);
				String year = rs.getString(ToBeProcessed.COL_YEAR);
				String month = rs.getString(ToBeProcessed.COL_MONTH);
				String day = rs.getString(ToBeProcessed.COL_DAY);

				posts.add(new ToBeProcessed(id, data, fbID, tagged, checkIn, year, month, day));
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return posts;
	}

	public ToBeProcessed getPost(int id) {
		ToBeProcessed tbp = null;

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
			ps.setInt(1, id);

			rs = ps.executeQuery();

			while (rs.next()) {
				String data = rs.getString(ToBeProcessed.COL_DATA);
				String fbID = rs.getString(ToBeProcessed.COL_FBID);
				String tagged = rs.getString(ToBeProcessed.COL_TAGGED);
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);
				CheckIn checkIn = new CheckIn(place, city, country);
				String year = rs.getString(ToBeProcessed.COL_YEAR);
				String month = rs.getString(ToBeProcessed.COL_MONTH);
				String day = rs.getString(ToBeProcessed.COL_DAY);

				tbp = new ToBeProcessed(id, data, fbID, tagged, checkIn, year, month, day);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return tbp;
	}

	public ArrayList<CheckIn> getAllWithLocation() {
		ArrayList<CheckIn> tbps = new ArrayList<CheckIn>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_CITY + " <> \'\' OR "
							+ ToBeProcessed.COL_PLACE + " <> \'\' OR " + ToBeProcessed.COL_COUNTRY + " <> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);

				CheckIn checkIn = new CheckIn(place, city, country);

				tbps.add(checkIn);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return tbps;
	}

	// public HashMap<String, String> getAllVerbs() {
	// HashMap<String, String> verbs = new HashMap<String, String>();
	//
	// PreparedStatement ps = null;
	// ResultSet rs = null;
	//
	// try {
	// ps = conn.prepareStatement("SELECT * FROM " + ToBeProcessed.TABLE_TBP +
	// ";");
	//
	// rs = ps.executeQuery();
	//
	// while (rs.next()) {
	// String verb = rs.getString(ToBeProcessed.COL_VERB);
	// String post = String.valueOf(rs.getInt(ToBeProcessed.COL_ID));
	//
	// if (verb == null || !verb.equals("")) {
	// if (!verbs.containsKey(verb))
	// verbs.put(verb, post);
	// else {
	// String temp = verbs.get(verb) + ", " + post;
	// verbs.put(verb, temp);
	// }
	// }
	//
	//// if (!verb.equals(""))
	//// verbs.add(verb);
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// ps.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	//
	// return verbs;
	// }

	public ArrayList<String> getCountries(String currentLocation) {
		ArrayList<String> countries = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_COUNTRY + " <> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);

				if (!currentLocation.contains(country) && !countries.contains(country) && country != null
						&& !("").equals(country))
					countries.add(country);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return countries;
	}

	public HashMap<String, ArrayList<String>> getLocalPlaces(String currCountry) {
		HashMap<String, ArrayList<String>> localPlaces = new HashMap<String, ArrayList<String>>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_CITY + " <> \'\' OR "
							+ ToBeProcessed.COL_PLACE + " <> \'\' OR " + ToBeProcessed.COL_COUNTRY + "<> \'\';");
			rs = ps.executeQuery();

			while (rs.next()) {
				ArrayList<String> places = new ArrayList<String>();
				String place = rs.getString(ToBeProcessed.COL_PLACE);
				String city = rs.getString(ToBeProcessed.COL_CITY);
				String country = rs.getString(ToBeProcessed.COL_COUNTRY);

				if (country != null) {
					if (!("").equals(country) && currCountry.contains(country)) {
						if (!localPlaces.containsKey(city) && !("").equals(city)) {
							if (!places.contains(place))
								places.add(place);
							localPlaces.put(city, places);
						} else {
							places = localPlaces.get(city);
							if (!places.contains(place))
								places.add(place);
							localPlaces.put(city, places);
						}
					}
				}
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return localPlaces;
	}
	
	public String getTagged(int postID) {
		String tagged = "";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement(
					"SELECT * FROM " + ToBeProcessed.TABLE_TBP + " WHERE " + ToBeProcessed.COL_ID + " = ?;");
			ps.setInt(1, postID);
			rs = ps.executeQuery();

			while (rs.next()) {
				tagged = rs.getString(ToBeProcessed.COL_TAGGED);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return tagged;
	}

	public void truncateToBeProcessedPost() {
		PreparedStatement ps = null;
		conn = dc.getConnection();

		try {
			ps = conn.prepareStatement("TRUNCATE " + ToBeProcessed.TABLE_TBP);

			ps.execute();
			conn.close();
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
