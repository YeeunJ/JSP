<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second page</title>
</head>
<body>
<%   
//String name=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);   
String name=(String)session.getAttribute("user");  
out.print("Hello "+name);  
  
%> 
</body>
</html>