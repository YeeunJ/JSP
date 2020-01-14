<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.first.LoginDao" %>
<jsp:useBean id="obj" class="com.first.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
boolean status=LoginDao.validate(obj);
if(status){
out.println("you are successfully logged in");
session.setAttribute("session","TRUE");
}
else{
out.print("Sorry, email or password error");
%>

<jsp:include page="index.jsp"></jsp:include>
<%
}
%>