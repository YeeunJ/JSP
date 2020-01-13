<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="String" value="Welcome to javatpoint"/>  
  
<c:if test="${fn:contains(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
   
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>  

<c:set var="String1" value="Welcome to JSP programming"/>  
  
<c:if test="${fn:endsWith(String1, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>  

<p>Index-1 : ${fn:indexOf(String1, "JSP")}</p>  

<c:set var="str" value="${fn:trim(String1)}" />
<p>Final value of string is : ${str}</p>
<p>Length of the string is: ${fn:length(str)}</p>
<p>Uppercase of string is: ${fn:toUpperCase(str)}.</p>

<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
  
<p>String-3 : ${str3}</p>  
<c:set var="str4" value="${fn:split(str3, ' ')}" />  
<c:set var="str5" value="${fn:join(str4, '-')}" />  
  
<p>String-5 : ${str5}</p>  

<c:set var="string2" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL."/>  
${fn:substringBefore(string2, "developed")}  

<c:set var="author" value="Ramesh Kumar"/>
<p>Before Replacement : ${author}</p>
<p>After Replacement : ${fn:replace(author, "Ramesh", "Suresh")}</p>

</c:if>  
</body>
</html>