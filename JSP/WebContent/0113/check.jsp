<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<% 
String id=request.getParameter("id");
String subject=request.getParameter("subject");
String fileName1=request.getParameter("fileName1");
String fileName2=request.getParameter("fileName2");
String orgfileName1=request.getParameter("orgfileName1");
String orgfileName2=request.getParameter("orgfileName2");
%>

<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	아이디: <%=id %><br>
	제목: <%=subject %><br>
	
	첨부파일(클릭시 다운로드)<br>
	
	- 파일 1: <a href="download.jsp?fileName=<%=orgfileName1 %>"><%=orgfileName1 %></a><br/>
	<img src="/JSP/WebContent/upload/<%=fileName1 %>" width=400 height=300></img><br/>
	- 파일 2: <a href="download.jsp?fileName=<%=fileName2 %>"><%=orgfileName2 %></a><br/>
	<img src="/JSP/WebContent/upload/<%=fileName2 %>" width=400 height=300></img><br/>

</body>
</html>