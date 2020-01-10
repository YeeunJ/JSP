<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<html>
<head>
<meta charset="UTF-8">
<title>function tag</title>
</head>
<body>
	<c:set var="String" value="Hello world"/>  
	  
	<c:if test="${fn:contains(String, 'hello')}">  
	   <p>Found hello<p>  
	</c:if>  
	  
	<c:if test="${fn:contains(String, 'Hello')}">  
	   <p>Found Hello<p>  
	</c:if> 
	
	<c:if test="${fn:containsIgnoreCase(String, 'hello')}">  
	   <p>Found hello 2<p>  
	</c:if>  
	  
	<c:if test="${fn:containsIgnoreCase(String, 'Hello')}">  
	   <p>Found Hello 2<p>  
	</c:if> 
	
	
	<c:set var="string" value="Welcome to JSP programming"/>  
  
	<c:if test="${fn:endsWith(string, 'programming')}">  
	   <p>String ends with programming<p>  
	</c:if>  
	  
	<c:if test="${fn:endsWith(string, 'JSP')}">  
	   <p>String ends with JSP<p>  
	</c:if> 
	
	
	<c:set var="string1" value="It is first String."/>  
	<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
	<p>With escapeXml() Function:</p>  
	<p>string-1 : ${fn:escapeXml(string1)}</p>  
	<p>string-2 : ${fn:escapeXml(string2)}</p>  
	  
	<p>Without escapeXml() Function:</p>  
	<p>string-1 : ${string1}</p>  
	<p>string-2 : ${string2}</p>  
	
	<c:set var="string3" value="It is first String."/>  
	<c:set var="string4" value="It is <xyz>second String.</xyz>"/>  
	  
	<p>Index-1 : ${fn:indexOf(string3, "first")}</p>  
	<p>Index-2 : ${fn:indexOf(string4, "second")}</p>  
	
	<c:set var="str1" value="Welcome to JSP        programming         "/>  
	<p>String-1 Length is : ${fn:length(str1)}</p>  
	  
	<c:set var="str2" value="${fn:trim(str1)}" />  
	<p>String-2 Length is : ${fn:length(str2)}</p>  
	<p>Final value of string is : ${str2}</p> 
	
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
	The string starts with "The": ${fn:startsWith(msg, 'The')}  
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
	
	<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	  
	<p>String-3 : ${str3}</p>  
	<c:set var="str4" value="${fn:split(str3, ' ')}" />  
	<c:set var="str5" value="${fn:join(str4, '-')}" />  
	  
	<p>String-5 : ${str5}</p> 
	
	   
	<c:set var="string" value="Welcome to JSP Programming"/>  
	<p>${fn:toLowerCase("HELLO,")}  
	${fn:toLowerCase(string)}</p>  

	
	<c:set var="site" value="javatpoint.com"/>  
  	<c:set var="author" value="Sonoo Jaiswal"/>  
  	<p>Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.  </p>
  
  	<c:set var="string" value="This is the first string."/>  
	<p>${fn:substring(string, 5, 17)}</p>
	
	<c:set var="string" value="Nakul Jain"/>  
	<p>${fn:substringAfter(string, "Nakul")}  </p>
	
	<c:set var="string" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL."/>  
	<p>${fn:substringBefore(string, "developed")} </p>
	
	<c:set var="str1" value="This is first string"/>  
	<c:set var="str2" value="Hello"/>  
	<p>Length of the String-1 is: ${fn:length(str1)}</p>
	<p>Length of the String-2 is: ${fn:length(str2)}</p>
	<c:set var="author" value="Ramesh Kumar"/>  
	<c:set var="string" value="pqr xyz abc PQR"/>  
	<p>${fn:replace(author, "Ramesh", "Suresh")} </p>
	<p>${fn:replace(string, "pqr", "hello")}  </p>
	
	</body>
</html>