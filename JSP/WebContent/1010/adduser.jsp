<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.first.UserDao" %>
    <jsp:useBean id="u" class="com.first.User"></jsp:useBean>
    <jsp:setProperty property="*" name="u"/>
    
<%
int i=UserDao.save(u);
if(i>0){
	response.sendRedirect("adduser-success.jsp");
}
else{
	response.sendRedirect("adduser-error.jsp");
}
%>