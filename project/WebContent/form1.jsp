<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
<%= request.getRequestURI() %><br>
<h3>회원 가입하기</h3>
<form method="post" action="<%= request.getContextPath() %>/insert.jsp" >
    <p>아이디</p>
    <input type="text" name="id" placeholder="Enter Name">
 
    <p>패스워드</p>
    <input type="password" name="pwd" placeholder="Enter Password">
 
    <p>이메일</p>
    <input type="text" name="email" placeholder="Enter Email">
         
    <p>핸드폰</p>  
     <input type="text" name="phone" placeholder="Enter Phone Number">
     
    <p>자기소개</p>
    <textarea name="info" placeholder="Enter Introduction" cols="30" rows="4"></textarea>
    <br/>
     
    <input type="submit" value="Submit">
     
</form>
</body>
</html>