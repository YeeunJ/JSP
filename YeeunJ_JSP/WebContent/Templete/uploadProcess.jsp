<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.templete.PostDao"%>  
<%@page import="com.templete.Post"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<%
	String id = "";
	String subject = "";
	String fileName1 = "";
	String fileName2 = "";
	String orgfileName1 = "";
	String orgfileName2 = "";
	String context = "";
	String uploadPath = application.getRealPath("upload");
	try {
		MultipartRequest multi = new MultipartRequest(
			request,
			uploadPath
	);
	
	id = multi.getParameter("id");
	subject = multi.getParameter("subject");
	fileName1 = "../upload/"+multi.getFilesystemName("file1");
	orgfileName1 = multi.getOriginalFileName("file1");
	fileName2 = "../upload/"+multi.getFilesystemName("file2");
	orgfileName2 =multi.getOriginalFileName("file2");
	context =multi.getOriginalFileName("context");
	} catch(Exception e) {
		e.getStackTrace();
	}
	Post post = new Post(id, subject, context, fileName1, fileName2);
%>
	  
	<%
	out.println("test: "+ post.getContext());
	int status=PostDao.register(post);  
	if(status>0){  
		out.println("You are successfully register");  
		session.setAttribute("session","TRUE");  
	}  
	else  
	{  
	out.print("failed"); 
	}
	%> 
	
<p>업로드 되었습니다</p>

<form action="fileCheck.jsp" method="post">
	<input type="hidden" name="id" value="<%=id%>">
	<input type="hidden" name="subject" value="<%=subject%>">
	<input type="hidden" name="fileName1" value="<%=fileName1%>">
	<input type="hidden" name="fileName2" value="<%=fileName2%>">
	<input type="hidden" name="orgfileName1" value="<%=orgfileName1%>">
	<input type="hidden" name="orgfileName2" value="<%=orgfileName2%>">
	<img src="<%=fileName1%>" width="500px"> 
	<img src="<%=fileName2%>" width="500px"><br>
	<input type="submit" value="업로드 확인">
	<button type="button" onclick="location.href='templete_main.jsp">main</button>
</form>
</body>
</html>