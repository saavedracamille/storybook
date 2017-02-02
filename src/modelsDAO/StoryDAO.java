package modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbConnection.DatabaseConnection;
import models.Story;

public class StoryDAO {
	private Connection conn;

	public StoryDAO() {
		DatabaseConnection dc = new DatabaseConnection();
		conn = dc.getConnection();
	}

	public void addStory(Story story) {
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement("INSERT INTO " + Story.TABLE_STORY + " (" + Story.COL_STORYINTRO + ", "
					+ Story.COL_STORYBODY + ", " + Story.COL_STORYCON + ") VALUES(?, ?, ?);");
			ps.setString(1, story.getStoryIntro());
			ps.setString(2, story.getStoryBody());
			ps.setString(3, story.getStoryCon());

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
