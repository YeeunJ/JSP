<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>The fmt:parseNumber tag Example is:</h3>  
  
<c:set var="Amount" value="786.970" />  
  
<fmt:parseNumber var="j" type="number" value="${Amount}" />  
<p><i>Amount is:</i>  <c:out value="${j}" /></p>  
  
<fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
<p><i>Amount is:</i>  <c:out value="${j}" /></p>  


<h3>Parsed Date:</h3>  
<c:set var="date" value="12-08-2016" />  
  
<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
<p><c:out value="${parsedDate}" /></p> 

<h3>The fmt:Message Tag:</h3> 
<fmt:setBundle basename="com.javatpoint.Message" var="lang"/>  
<fmt:message key="vegetable.Potato" bundle="${lang}"/><br/>  
<fmt:message key="vegetable.Tomato" bundle="${lang}"/><br/>  
<fmt:message key="vegetable.Carrot" bundle="${lang}"/><br/>  

<h2>Different Formats of the Date</h2>  
<c:set var="Date" value="<%=new java.util.Date()%>" />  
<p>  
Formatted Date and Time in short style :  
<fmt:formatDate type="both" dateStyle="short" timeStyle="short"  
value="${Date}" />  
</p>   
</body>
</html>