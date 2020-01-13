<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jsp4.RegisterDao"%>  
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
	System.out.println("rere_password: " + obj.getUpass());
	int status=RegisterDao.register(obj);  
	if(status>0){  
		out.println("You are successfully register");  
		session.setAttribute("session","TRUE");  
	}  
	else  
	{  
	out.print("failed");  
	%>  
	<jsp:include page="index.jsp"></jsp:include>  
	<%  
		}  
	%>  
</body>
</html>