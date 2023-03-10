package com.mydiary.helpers;

import java.sql.*;

public class ConnectionProvider {
	private static Connection con;

	public static Connection getConnection() {
		try {
			if (con == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3304/keepnotes", "root", "Piyush@90778");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
