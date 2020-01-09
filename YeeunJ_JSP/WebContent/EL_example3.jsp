<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL cookie example</title>
</head>
<body>
<h1>First JSP</h1>  
<%  
Cookie ck=new Cookie("name","ye");  
response.addCookie(ck);  
%>  
<a href="process5.jsp">click</a>  
</body>
</html>