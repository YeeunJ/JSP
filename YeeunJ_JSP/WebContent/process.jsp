<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.hello.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
  
name: <jsp:getProperty property="name" name="u"/><br>  
password: <jsp:getProperty property="password" name="u"/><br>  
email: <jsp:getProperty property="email" name="u" /><br> 


</body>
</html>