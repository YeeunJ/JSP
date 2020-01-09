<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
<h3>회원 가입하기</h3>
<form method="post" action="form_ok.jsp" >
    <p>아이디</p>
    <input type="text" name="userId" placeholder="Enter Name">
 
    <p>패스워드</p>
    <input type="password" name="passwd" placeholder="Enter Password">
 
    <p>이메일</p>
    <input type="text" name="email" placeholder="Enter Email">
         
    <p>관심사항</p>
    <input type="checkbox" name="interest" value="IT">IT/인터넷
    <input type="checkbox" name="interest" value="movie">영화
    <input type="checkbox" name="interest" value="music">음악
    <input type="checkbox" name="interest" value="book">책
    <input type="checkbox" name="interest" value="food">음식
     
    <p>핸드폰</p>  
     <input type="text" name="number" placeholder="Enter Phone Number">
     
    <p>자기소개</p>
    <textarea name="introduce" placeholder="Enter Introduction" cols="30" rows="4"></textarea>
    <br/>
     
    <input type="submit" value="Submit">
     
</form>
</body>
</html>