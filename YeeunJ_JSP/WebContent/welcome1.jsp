<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome 1</title>
</head>
<body>
<%   
String name=request.getParameter("uname");  
out.print("welcome "+name);  
%>
<%   
out.print("Welcome "+request.getParameter("uname"));  
//String driver=application.getInitParameter("dname");
String driver=config.getInitParameter("dname");  
out.print("driver name is="+driver);  
%>  
<%! int data=50; %>  
<p><%= "Value of the variable is:"+data %> </p>
</body>
</html>