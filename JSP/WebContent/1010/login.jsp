<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">

<title>Register</title>
<style>
*{
 	font-faily:Monospace;
 	
}
body,html{
	font-faily:Monospace;
	margin:0;
	padding:0;
	text-align:center;
	background-color:#eee;
	
}
input[type="text"] ,input[type="password"]{
	color:black;
	boder:1px solid #bbb;
	width:90%;
	
}

input[type="submit"] {
	color:white;
	font-weight:bold;
	background-color: #045FB4;
	width:93%;
}

input{
	margin:5px;
	padding:5px;
	border-radius:5px;
}
</style>
</head>
<body>
<h2  style="font-family:Monospace;">회 원 가 입</h2>
<form action="loginCheck.jsp" method="post" style="font-family:Monospace;">
	<input type="text" name="userID" placeholder="아이디를 입력하세요">
	<br/>
	<input type="password" name="userPwd" placeholder="비밀번호를 입력하세요">
	<br/>
	<input type="text" name="userName" placeholder="이름을 입력하세요">
	<br/>
	<input type="radio" name="userGender" autocomplete="off" value="male" checked>남자
	<input type="radio" name="userGender" autocomplete="off" value="female"  checked>여자
	<br/>
	<input type="text" name="userEmail" placeholder="이메일을 입력하세요">
	<br/>
	<input type="submit" value="회 원 가 입">
</form>
</body>
</html>