package jsp;

import java.sql.*;

public class userDB {
	
	public static Connection getConnection() {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/sia2650","sia2650","seoina0814^^");
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
	


	public int join (userBean user) {
		
		int status=0;
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO Persons(userID,userPwd,userName,userGender,userEmail) VALUES(?,?,?,?,?)");
			ps.setString(1, user.getUserID());
			ps.setString(2, user.getUserPwd());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getUserGender());
			ps.setString(5, user.getUserEmail());
			
			status= ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);

		}
		return status;
		
	}
	
}
