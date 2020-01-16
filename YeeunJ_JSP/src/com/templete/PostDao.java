package com.templete;

import java.sql.*; 

public class PostDao {
	public static int register(Post u){  
		try{  
		Connection con=ConnectionProvider.getCon();  
		PreparedStatement ps=con.prepareStatement("insert into Boardset(id,subject,file1,file2,context) values(?,?,?,?,?)");  
		ps.setString(1,u.getId());  
		ps.setString(2,u.getSubject());  
		ps.setString(3,u.getFile1());  
		ps.setString(4,u.getFile2());
		ps.setString(5,u.getContext());
		              
		return ps.executeUpdate();  
		
		}catch(Exception e) {
            e.printStackTrace();
        }
		      
		return -1;  
	} 
	
}
