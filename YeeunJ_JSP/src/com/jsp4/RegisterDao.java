package com.jsp4;

import java.sql.*;  

public class RegisterDao {
	public static int register(User u){  
		try{  
		Connection con=ConnectionProvider.getCon();  
		PreparedStatement ps=con.prepareStatement("insert into user432(NAME, EMAIL, PASS) values(?,?,?)");  
		ps.setString(1,u.getUname());  
		ps.setString(2,u.getUemail());  
		ps.setString(3,u.getUpass());  
		              
		return ps.executeUpdate();  
		
		}catch(Exception e) {
            e.printStackTrace();
        }
		      
		return -1;  
	}  
}
