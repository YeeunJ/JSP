<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set value="10" var="url"></c:set> 
  	<c:if test="${url<1}">  
     	<c:redirect url="https://velog.io/@ye050425"/>  
  	</c:if>  
	<c:if test="${url>1}">  
	   	<c:redirect url="http://facebook.com"/>  
	</c:if>  
</body>
</html>