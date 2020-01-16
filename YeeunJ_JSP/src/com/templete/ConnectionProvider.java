package com.templete;
import java.sql.*;  
import static com.templete.Provider.*;  

public class ConnectionProvider {
	private static Connection con=null;  
	static{  
	try{  
	Class.forName(DRIVER);  
	con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
	System.out.println(con);
	}catch(Exception e){}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	}  
	  
}
