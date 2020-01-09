<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP action tag</h1>
<h2> jsp:forward action tag</h2>
	<p>이동할 페이지를 선택하세요</p>
	<form action="view.jsp">
	<select name="code">
		<option value="A">A</option>
		<option value="B">B</option>
		<option value="C">C</option>
	</select>
	<input type="submit"value="이동"/>
	</form>
	
	<br><hr><br>
	
<h2> jsp:include action tag</h2>
<p>This is main page</p>
<p>But we get other page's result</p>

<jsp:include page= "/hello.jsp"/>

<p>end section of main page</p>

	<br><hr><br>
	
<h2> jsp:useBean action tag</h2>
<jsp:useBean id="obj" class="jsp.Calculator"/>

<%
int m=obj.cube(5);
out.print("cube of 5 is "+m);
%>

	<br><hr><br>
	
<h2> bean development in JSP</h2>
<form action="process.jsp" method="post">

Name:<input type="text" name="name"><br>
Password:<input type="password" name="password"><br>
Email:<input type="text" name="email"><br>
<input type="submit" value="register">

</form>

	<br><hr><br>

<h2> Displaying applet in JSP (jsp:plugin action tag)</h2>
<h3>Mouse Drag Example</h3>
<jsp:plugin align="middle" height="500" width="500" type="applet" code="MouseDrag.class" name="clock" codebase="."/>

</body>
</html>