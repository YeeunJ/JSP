<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.first.RegisterDao"%>
<jsp:useBean id="obj" class="com.first.Reg_User"/>
<jsp:setProperty property="*" name="obj"/>

<%
int status=RegisterDao.register(obj);
if(status>0)
	out.println("You are successfully registered");
%>