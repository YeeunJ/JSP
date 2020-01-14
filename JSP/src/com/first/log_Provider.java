package com.first;

import java.sql.Connection;
import java.sql.DriverManager;

public class log_Provider {
	private static Connection con=null;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/sia2650","sia2650","seoina0814^^");
		}
		catch(Exception e) {}
		
	}
	
	public static Connection getCon() {
		return con;
	}
}	
