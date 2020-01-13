<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process</title>
</head>
<body>

<jsp:useBean id="u" class="jsp.userBean">
</jsp:useBean>
<jsp:setProperty property="*" name="u"/>

Record: <br>

<jsp:getProperty property="name" name="u"/><br>
<jsp:getProperty property="password" name="u"/><br>
<jsp:getProperty property="email" name="u"/><br>


<%String name="arjun"; %>
<jsp:setProperty property="name" name="u" value="<%=name %>"/>

Recode:<br>
<jsp:getProperty property="name" name="u"/><br>

</body>
</html>