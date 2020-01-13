<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="${'Welcome to javaTpoint'}"/>  
 
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  

<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>   

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  

<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>  

<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens> 

</body>
</html>