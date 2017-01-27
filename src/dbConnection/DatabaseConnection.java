package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private String driverName;
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
		this.driverName = "com.mysql.jdbc.DriverManager";
		this.url = "jdbc:mysql://localhost:3306/";
		this.dbName = "thesis";
		this.username = "root"; //root
		this.password = "1234";
	}

	public static Connection getConnection() {
		try {
			System.out.println("connected!!!");
			return DriverManager.getConnection(url + dbName, username, password);
		} catch (SQLException e) {
			System.out.println("not connected!!!");
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
