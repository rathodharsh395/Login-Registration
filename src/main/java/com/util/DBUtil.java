package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

	private static final String URL = "jdbc:mysql://localhost:3306/loginregister";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "HRathod395";
	
	static {
		try {
			//load the mysql jdbc driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection()throws SQLException{
		System.out.print("connection bulid ho raha hai");
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
	
	
}
