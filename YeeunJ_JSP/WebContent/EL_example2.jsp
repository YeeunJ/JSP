<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL sessionScope example 2</title>
</head>
<body>
<h3>welcome to index page</h3>  
<%  
session.setAttribute("user","sonoo");  
%>  
  
<a href="process4.jsp">visit</a>  
</body>
</html>