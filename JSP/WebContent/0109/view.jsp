<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select_item=request.getParameter("code");
	String pageURL=null;
	
	if(select_item.equals("A")){
		pageURL="https://www.naver.com/";
	}
	else if(select_item.equals("B")){
		pageURL="https://www.google.com/";
	}
	else if(select_item.equals("C")){
		pageURL="https://www.daum.net/";
	}

%>

<jsp:forward page="<%=pageURL %>"/>