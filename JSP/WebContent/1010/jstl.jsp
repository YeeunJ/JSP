<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL</h1>
	<h2>1. JSTL Core Tag</h2>
	
	<h3>- c:out</h3>
	<c:out value="${'Welcome to javaTpoint'}"/>
	
	<br><hr><br>
	
	<h3>- c:import</h3>
	<c:import var="data" url="http://www.javatpoint.com"/>
	<c:out value="${data}"/>
	
	<br><hr><br>
	
	<h3>- c:set</h3>
	<c:set var="income" scope="session" value="${4000*4}"/>
	<p>Make variable<c:out value="${income}"/></p>
	
	<br><hr><br>
	
	<h3>- c:remove</h3>
	<c:remove var="income"/>
	<p>After Remove variable value is<c:out value="${income}"/></p>
	
	<br><hr><br>
	
	<h3>- c:catch & c:if </h3>
	<c:catch var="catchtheException">
		<% int x=2/0; %>
	</c:catch>
	
	<c:if test="${catchtheException !=null}">
		<p> The type of exception is : ${catchtheException}<br/>
		There is an exception: ${catchtheException.message}</p>
	</c:if>
	
	<br><hr><br>
	
	<h3>- c:choose & c:when $ c:otherwise </h3>
	<c:set var="incomes" scope="session" value="${2000*4}"/>
	<p>Your income is : <c:out value="${incomes}"/> </p>
	
	<c:choose>
		<c:when test="${income <=1000 }">
			Income is not good.
		</c:when>
		<c:when test="${income >1000 }">
			Income is good.
		</c:when>
		<c:otherwise>
			Income is undetermined...
		</c:otherwise>
	</c:choose>
		
	<br><hr><br>
	
	<h3>- c:forEach </h3>
	<c:forEach var="i" begin="1" end="3">
		Item <c:out value="${i}"/><p>
	</c:forEach>
	
	<br><hr><br>
	
	<h3>- c:forTokens </h3>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
		<c:out value="${name}"/><p>
	</c:forTokens>
	
	<br><hr><br>
	
		<h3>- c:param </h3>
	<c:url value="/index1.jsp" var="completeURL"/>
	<c:param name="trackingId" value="786"/>
	<c:param name="user" value="Nakul"/>
	
	<br><hr style="color: red;"><br>
	
	<h2>2. JSTL Function Tags</h2>
	
	<h3>- fn:contains() </h3>
	<c:set var="String" value="Welcome to javatpoint"/>
	<c:if test="${fn:contains(String,'javatpoint')}">
		<p>Found javatpoint string</p>
	</c:if>
	
	<c:if test="${fn:contains(String,'JAVATPOINT')}">
		<p>Found JAVATPOINT string</p>
	</c:if>
	
	<br><hr><br>
	
		<h3>- fn:containsIgnoreCase() </h3>
	<c:set var="String" value="Welcome to javatpoint"/>
	<c:if test="${fn:containsIgnoreCase(String,'javatpoint')}">
		<p>Found javatpoint string</p>
	</c:if>
	
	<c:if test="${fn:containsIgnoreCase(String,'JAVATPOINT')}">
		<p>Found JAVATPOINT string</p>
	</c:if>
	
	<br><hr><br>
		
		<h3>- fn:endsWith() $ fn:startsWith()</h3>
	<c:set var="String" value="Welcome to JSP programming"/>
	<c:if test="${fn:endsWith(String,'programming')}">
		<p>String ends with programming</p>
	</c:if>
	
	<c:if test="${fn:startsWith(String,'Welcome')}">
		<p>String starts with Welcome</p>
	</c:if>
	
	<br><hr><br>
	
			<h3>- fn:escapeXml()</h3>
	<c:set var="string1" value="It is first String"/>
	<c:set var="string2" value="It is <xyz>second String<xyz>"/>
	
	<p>With escapeXml() Function: </p>
	<p>string1: ${fn:escapeXml(string1)}</p>
	<p>string2: ${fn:escapeXml(string2)}</p>
	
	<p>Without escapeXml() Function: </p>
	<p>string1: ${string1}</p>
	<p>string2: ${string2}</p>
	
	<br><hr><br>
	
	<h3>- fn:indexOf()</h3>
	
	<p>With escapeXml() Function: </p>
	<p>index - first: ${fn:indexOf(string1,"first")}</p>
	<p>index - second: ${fn:escapeXml(string2,"second")}</p>
	
	<br><hr><br>
	
	<h3>- fn:trim() & fn:length()</h3>
	
	<c:set var="str1" value="Welcome to JSP      Programming"/>
	<c:set var="str2" value="${fn:trim(str1)}"/>
	<p>string-1 Length is: ${fn:length(str1)}</p>
	<p>string-2 Length is: ${fn:length(str2)}</p>
	
	<br><hr><br>
	
	<h3>- fn:toLowerCase() $ fn:toUpperCase()</h3>
	
	<c:set var="str" value="Welcome to JSP Programming"/>
	${fn:toLowerCase("HELLO,") }
	${fn:toLowerCase(str)}
	
	<c:set var="site" value="javatpoint.com"/>  
 	<c:set var="author" value="Sonoo Jaiswal"/>  
 	<p>Hi, This is ${fn:toUpperCase(site)} devleoped by {fn:toUpperCase(author)}.</p>
	
	<br><hr><br>
	
	<h3>- fn:substring()</h3>
	
	${fn:substring(string1,5,17) }
	
	<br><hr><br>
	
	<h3>- fn:substringAfter()</h3>
	
	${fn:substringAfter(string1,"is") }
	
	<br><hr><br>
	
	<h3>- fn:substringBefore()</h3>
	
	${fn:substringBefore(str,"JSP") }
	
	<br><hr><br>
	
	<h3>- fn:replace()</h3>
	
	<c:set var="site2" value="pqr xyz abc PQR"/>  
 	<c:set var="author2" value="Sonoo Jaiswal"/>  
	${fn:replace(site2,"pqr","hello") }
	${fn:replace(author2,"Sonoo","Suresh") }
	

	<br><hr style="color: red;"><br>
	
	<h2>3. JSTL Formatting Tags</h2>
	
		
	<h3>- fmt:parseNumber</h3>
	
	<c:set var="Amount" value="786.970"/>
	
	<fmt:parseNumber var="j" type="number" value="${Amount}"/>
	<p><i>Amount is:</i><c:out value="${j}"/></p>
	
	<fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}"/>
	<p><i>Amount is:</i><c:out value="${j}"/></p>
	
	<br><hr><br>
	
	<h3>- fmt:formatNumber</h3>
	
	<c:set var="Amount2" value="9850.14115"/>
	
	<p>Formatted Number-1 :
	<fmt:formatNumber value="${Amount}" type="currency"/></p>
	
	<p>Formatted Number-2 :
	<fmt:formatNumber value="${Amount}" type="number" groupingUsed="true"/></p>
	
	<p>Formatted Number-3 :
	<fmt:formatNumber value="${Amount}" type="number" maxIntegerDigits="3"/></p>
	
	<p>Formatted Number-4 :
	<fmt:formatNumber value="${Amount}" type="number" maxFractionDigits="6"/></p>
	
	<p>Formatted Number-5 :
	<fmt:formatNumber value="${Amount}" type="percent" maxIntegerDigits="4"/></p>
	
	<p>Formatted Number-6 :
	<fmt:formatNumber value="${Amount}" type="number" pattern="###.###$"/></p>
	<br><hr><br>
	
	<h3>- fmt:parseDate</h3>
	
	<c:set var="date" value="10-01-2020"/>
	
	<fmt:parseDate value="${date}" var="parsedDate" pattern="dd-MM-yyyy" />
	<p><c:out value="${parseDate}"/></p>
	
	<br><hr><br>
	
	<h3>- fmt:setTimeZone</h3>
	
	<c:set var="time" value="<%= new java.util.Date() %>"/>
	<p><b>Date and Time in Indian Standard Time(IST) Zone: </b><fmt:formatDate value="${date}"  
             type="both" timeStyle="long" dateStyle="long" /></p>  
             
    <fmt:setTimeZone value="GMT-10"/>
	
	<p><b>Date and Time in GMT-10 time Zone:</b> <fmt:parseDate value="${time}" type="both" timeStyle="long" dateStyle="long"/>
	</p>
	
	<br><hr><br>
	
	<h3>- fmt:formatDate</h3>
	
	<c:set var="Date" value=<%=new java.util.Date() %>/>
	<p>
	Formatted Time:
	<fmt:formatDate type="time" value="${Date}"/> </p>
	<p>
	Formatted Time:
	<fmt:formatDate type="date" value="${Date}"/> </p>
	<p>
	Formatted Date and Time:
	<fmt:formatDate type="both" value="${Date}"/> </p>
	<p>
	Formatted Date and Time in short style:
	<fmt:formatDate type="both" dateStye="short" timeStyle="short" value="${Date}"/> </p>
	<p>
	Formatted Date and Time in short style:
	<fmt:formatDate type="both" dateStye="medium" timeStyle="medium" value="${Date}"/> </p>
	<p>
	Formatted Date and Time in short style:
	<fmt:formatDate type="both" dateStye="long" timeStyle="long" value="${Date}"/> </p>
	
	<br><hr style="color: red;"><br>
	
	<h2>4. JSTL XML Tags</h2>
	
	<h3>- x:out</h3>
	
	<c:set var="vegetable">
	<vegetables>
		<vegetable>
			<name>onion</name>
			<price>40/kg</price>
		</vegetable>
		<vegetable>
			<name>potato</name>
			<price>30/kg</price>
		</vegetable>
		<vegetable>
			<name>Tomato</name>
			<price>90/kg</price>
		</vegetable>
	</vegetables>
	</c:set>
	<h3>Vegetable Information: </h3>
	<x:parse xml="${vegetable}" var="output"/>
	<p><b>Name of the vegetable is: </b></p>
	<x:out select="$output/vegetables/vegetable[1]/name"/><br>
	<p><b>Price of the Potato is: </b></p>
	<x:out select="$output/vegetables/vegetable[2]/price"/><br>
	
	<br><hr><br>
	
	<h3>- x:set</h3>
	
	<c:set var="book">
	<books>
		<book>
			<name>There mistakes of my life</name>
			<author>Chetan Bhagat</author>
			<price>200</price>
		</book>
		<book>
			<name>Tomorrow land</name>
			<author>Brad Bird</author>
			<price>2000</price>
		</book>
	</books>
	</c:set>
	
	<x:parse xml="${book}" var="output"/>
	<x:set var="fragment" select="$output/books/book[2]/price"/>
	<b>The price of the Tomorrow land book :</b>
	<x:out select="fragment"/>
	
	<br><hr><br>
	
	<h3>- x:choose $ x:when $ x:otherwise</h3>
	<x:parse xml="${book}" var="outputs"/>
	<x:choose>
		<x:when select="$outputs//book/author = 'Chetan bhagat'">
			Book is written by Chetan bhagat
		</x:when>
		<x:when select="$outputs//book/author = 'Brad Bird'">
			Book is written by Brad Bird
		</x:when>
		<x:otherwise> 
			The author is unknown..
		</x:otherwise>
	</x:choose>
	
	<br><hr style="color: red;"><br>
	
	<h2>5. JSTL SQL Tags</h2>
	
	<h3>- sql:setDataSource</h3>
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="1234"/>
	<br><hr><br>
	
</body>
</html>