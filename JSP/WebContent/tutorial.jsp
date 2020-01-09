<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSP scriptlet tag</h2>

<%out.print("welcome to jsp"); %>

<br><br>

<%
String name=request.getParameter("unname");
out.print("welcome"+name);
%>

<br><hr><br>

<h2>JSP expression tag</h2>

<%= "welcome to jsp"%>

<br><br>

Current Time:
<%=java.util.Calendar.getInstance().getTime()%>

<br><br>

<form action="welcome.jsp">
<input type="text" name="uname"><br/>
<input type="submit" value="go">
</form>

<br><hr><br>

<h2>JSP Declaration Tag</h2>

<%! int data=50; %>
<%= "Value of the variable is: "+data%>

<br><br>

<%!
int cube(int n){
	return n*n*n;
}
%>

<%= "Cube of 3 is: "+cube(3) %>

<br><hr><br>

<h2>JSP Implicit Objects</h2>
<p>There are 9 jsp implicit objects.</p>
<br>
<p>out -> JspWriter </p>
<% out.print("Today is :" + java.util.Calendar.getInstance().getTime()); %>

<br><hr><br>
<h2>JSP Response</h2>

<form action="welcome2.jsp">
<input type="text" name="uname"><br/>
<input type="submit" value="go">
</form>

<br><hr><br>

<form action="welcome3.jsp">
<input type="text" name="uname"><br/>
<input type="submit" value="go">
</form>

<br><hr><br>

<h2>Session implicit object</h2>
<form action="first.jsp">
<input type="text" name="uname">
<input type="submit" value="go"><br/>
</form>

<br><hr><br>

Sorry following exception occured: <%=exception%>

</body>
</html>