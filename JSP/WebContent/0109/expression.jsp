<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1. EL param example
	
	<form action="ex_serve.jsp">
	Enter Name: <input type="text" name="name"/><br/><br/>
	<input type="submit" value="go"/>
	</form>
	
	<br/><hr><br/>
	
	2. EL sessionScope example
	
	<h4>Welcome to main page</h4>
	<%session.setAttribute("user","sonoo");
	%>
	
	<a href="ex_serve.jsp">visit</a>
	
	<br/><hr><br/>
	
	3. EL cookie example
	
	<h4>JSP page</h4>
	<%
	Cookie co=new Cookie("name","abhishek");
	response.addCookie(co);
	%>
	
	<a href="ex_serve.jsp">Click!</a>
	
	
</body>
</html>