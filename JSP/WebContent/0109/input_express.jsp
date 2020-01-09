<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Input_express</title>
</head>
<body>
<jsp:useBean id="member" class="jsp.Register"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<% 
request.setAttribute("member",member);
%>
<jsp:forward page="output.jsp"/>
</body>
</html>