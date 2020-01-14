package com.jsp4;
import java.sql.*;  

public class LoginDao {
	  
	public static boolean validate(User bean){  
	boolean status=false;  
	try{  
		Connection con=ConnectionProvider.getCon();  
		              
		PreparedStatement ps=con.prepareStatement(  
		    "select * from user432 where email=? and pass=?");  
		  
		ps.setString(1,bean.getUemail());  
		ps.setString(2, bean.getUpass());  
		              
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		              
		}catch(Exception e){}  
		  
		return status;  
		  
		}  
}
