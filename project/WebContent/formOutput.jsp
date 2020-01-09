<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원입력 정보</title>
</head>
<body>
<p>아이디 : ${member.userId}</p>
<p>패스워드 : ${member.passwd}</p>
<p>이메일 : ${member.email}</p>
<p>관심사항 : <%=String.join(", ",request.getParameterValues("interest"))%></p> 
<p>핸드폰 : ${member.number}</p>  
<p>자기소개</p>
${member.introduce}
</body>
</html>