<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
	<p>아이디: <input type="text" name="id"></p>
	<p>제목: <input type="text" name="subject"></p>
	<p>파일첨부1: <input type="file" name="file1"></p>
	<p>파일첨부2: <input type="file" name="file2"></p>
	<input type="submit" value="확인">
	</form>
</body>
</html>