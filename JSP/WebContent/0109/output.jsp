<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style>
table,tr,th,td{
	border:1px solid #ccc;
	border-collapse:collapse;
}
th,td{
	padding:5px;
}
</style>
</head>
<body>
<table>
<tr>
<th>아이디: </th>
<td>${member.id}</td>
</tr>
<tr>
<th>비밀번호: </th>
<td>${member.pwd}</td>
</tr>
<tr>
<th>이메일: </th>
<td>${member.email}</td>
</tr>
<tr>
<th>이메일 수신여부: </th>
<td>${member.agree}</td>
</tr>
<tr>
<th>관심 사항: </th>
<td><% 
String interests[]=request.getParameterValues("interest");
for(String str:interests){
	out.print(str+ " ");
}
%></td>
</tr>
<tr>
<th>핸드폰: </th>
<td>${member.phone_select}-${member.phone}</td>
</tr>
<tr>
<th>자기소개: </th>
<td>${member.introduce}</td>
</tr>

</table>
</body>
</html>