<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome 3</title>
</head>
<body>
<%   
  
String name=request.getParameter("uname");  
out.print("Welcome "+name);  
  
session.setAttribute("user",name);  
//pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE); 
%> 
<a href="second.jsp">second jsp page</a> 
<%!   
int cube(int n){  
return n*n*n;  
}  
%>  
<p><%= "Cube of 3 is:"+cube(3) %></p>
<p>Current Time: <%= java.util.Calendar.getInstance().getTime() %></p>
</body>
</html>