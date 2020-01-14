<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jsp4.LoginDao"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.jsp4.User"/>  
	  
	<jsp:setProperty property="*" name="obj"/>  
	  
	<%
	boolean status=LoginDao.validate(obj);  
	
	if(status){  
	out.println("You r successfully logged in");  
	session.setAttribute("session","TRUE");  
	}  
	else  
	{  
	out.print("Sorry, email or password error");  
	%>  
	<jsp:include page="index.jsp"></jsp:include>  
	<%  
	}  
	%>  
</body>
</html>