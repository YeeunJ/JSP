<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.SQLException"%>

<% 

request.setCharacterEncoding("utf-8");

Connection conn=null;  
PreparedStatement pstmt=null;

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String info = request.getParameter("info");

Class.forName("com.mysql.cj.jdbc.Driver");

try{
	String dbURL="jdbc:mysql://db4free.net:3306/sudallll12";                             
    String dbID="sudallll12";
    String dbPassword="glory00!";
    conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
    
    String SQL= "INSERT INTO form VALUES(?, ?, ?, ?, ?) ";
    pstmt = conn.prepareStatement(SQL);
    pstmt.setString(1,id);
    pstmt.setString(2,pwd);
    pstmt.setString(3,email);
    pstmt.setString(4,phone);
    pstmt.setString(5,info);
    pstmt.executeUpdate();
}finally {
	if(pstmt!=null) try{pstmt.close();} catch(SQLException ex){}
	if(conn!=null) try{conn.close();} catch(SQLException ex){}
}

%>
<p>입력완료</p>
</html>