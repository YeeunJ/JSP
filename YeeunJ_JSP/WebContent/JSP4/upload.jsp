<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="/Users/jeong-yeeun/Documents/new">
</head>
<body>
	<%  
	MultipartRequest m = new MultipartRequest(request, "/Users/jeong-yeeun/Documents/new");  
	out.print("successfully uploaded");  
	%>
</body>
</html>