<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
	MultipartRequest m=new MultipartRequest(request, "/Users/sia/git/repository/JSP/WebContent/upload");
	

	out.print("successfully uploaded");
%>