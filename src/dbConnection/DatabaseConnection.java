package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static String driverName;
	private static String url;
	private static String dbName;
	private static String username;
	private static String password;
	
	public DatabaseConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		driverName = "com.mysql.jdbc.DriverManager";
		url = "jdbc:mysql://localhost:3306/";
		dbName = "thesis";
		username = "root"; //root
		password = "1234";
	}

	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(url + dbName, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public String getDriverName() {
		return driverName;
	}

	public String getUrl() {
		return url;
	}

	public String getDbName() {
		return dbName;
	}

	public String getUsername() {
		return username;
	}
}
