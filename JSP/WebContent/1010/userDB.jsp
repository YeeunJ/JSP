<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String dbURL="jdbc:mysql://db4free.net:3306/sia2650?serverTimezone=UTC";
		String dbID="sia2650";
		String dbPwd="seoina0814^^";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e){
			out.println("DB connected fail");
			e.printStackTrace();
			return;
		}
		Connection conn;
		
		conn=DriverManager.getConnection(dbURL,dbID,dbPwd);
		out.println("DB connected success");
		
		conn.close();
%>
</body>
</html>