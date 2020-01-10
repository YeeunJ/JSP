<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core_Tag</title>
</head>
<body>
	<p><c:out value="${'Welcome to javaTpoint'}"/></p>
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Before Remove Value is: <c:out value="${income}"/></p>  
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p> 
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<c:if test="${income > 8000}">  
	   <p>My income is: <c:out value="${income}"/><p>  
	</c:if>
	<c:choose>  
	    <c:when test="${income <= 1000}">  
	       Income is not good.  
	    </c:when>  
	    <c:when test="${income > 10000}">  
	        Income is very good.  
	    </c:when>  
	    <c:otherwise>  
	       Income is undetermined...  
	    </c:otherwise>  
	</c:choose>  
	<c:set value="10" var="num"></c:set>  
	<c:choose>  
		<c:when test="${num%2==0}">  
			<c:out value="${num} is even number"></c:out>  
		</c:when>  
		<c:otherwise>  
			<c:out value="${num} is odd number"></c:out>  
		</c:otherwise>  
	</c:choose>  
	<c:forEach var="j" begin="1" end="3">  
	   <p>Item <c:out value="${j}"/></p>  
	</c:forEach>  
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
	   <c:out value="${name}"/><p>  
	</c:forTokens>  
	<c:url value="/index1.jsp" var="completeURL">  
	 <c:param name="trackingId" value="786"/>  
	 <c:param name="user" value="Nakul"/>  
	</c:url>  
	${completeURL}
	<c:url value="/RegisterDao.jsp"/>  
</body>
</html>