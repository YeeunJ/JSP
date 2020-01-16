<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
String id = "";
String subject = "";
String fileName1 = "";
String fileName2 = "";
String orgfileName1 = "";
String orgfileName2 = "";
String uploadPath = application.getRealPath("upload");
try {
	MultipartRequest multi = new MultipartRequest(
			request,
			uploadPath
	);
	
	id = multi.getParameter("id");
	subject = multi.getParameter("subject");
	fileName1 = multi.getFilesystemName("file1");
	orgfileName1 = multi.getOriginalFileName("file1");
	fileName2 = multi.getFilesystemName("file2");
	orgfileName2 = multi.getOriginalFileName("file2");
} catch(Exception e) {
	e.getStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=uploadPath %>
<form action="fileCheck.jsp" method="post">
	<input type="hidden" name="id" value="<%=id%>">
	<input type="hidden" name="subject" value="<%=subject%>">
	<input type="hidden" name="fileName1" value="<%=fileName1%>">
	<input type="hidden" name="fileName2" value="<%=fileName2%>">
	<input type="hidden" name="orgfileName1" value="<%=orgfileName1%>">
	<input type="hidden" name="orgfileName2" value="<%=orgfileName2%>">
	<img src="../upload/velog.png">
	<input type="submit" value="업로드 확인">
</form>
</body>
</html>