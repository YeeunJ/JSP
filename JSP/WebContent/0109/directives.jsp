<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
	<%@ include file="directive_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a>This is the first file</a>
	<br><br>
	<h1>JSP directives</h1>
	<h2>JSP page directive</h2>
	<h3>import</h3>
	<%@ page import= "java.util.Date" %>
	Today is <%= new Date() %>
	
	<hr>
	
	<h3>contentType</h3>
	<%@ page contentType= application/msword %>
	Today is: <%= new java.util.Date() %>
	
	<!-- isELIgnored -->
	<%@ page isELIgnored="true" %>
	
	
	<br><hr><br>
	
	
	
</body>
</html>