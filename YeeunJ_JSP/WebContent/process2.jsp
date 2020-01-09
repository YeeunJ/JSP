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
<%  
String name="arjun";  
%>  
<jsp:setProperty property="name" name="u" value="<%=name %>"/>  
  
Record:<br>  
<jsp:getProperty property="name" name="u"/><br>  
</body>
</html>