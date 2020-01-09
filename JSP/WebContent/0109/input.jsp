<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
p{
	font-faily:Monospace;
}
</style>
</head>
<body>
<h2>회원 가입하기</h2>
<form action="input_express.jsp" method="post">
	<p>아이디</p>
	<input type="text" name="id" placeholder="아이디를 입력하세요">
	<br/><br/>
	<p>비밀번호</p>
	<input type="password" name="pwd" placeholder="비밀번호를 입력하세요">
	<br/><br/>
	<p>이메일</p>
	<input type="text" name="email" placeholder="이메일을 입력하세요">
	<br/><br/>
	<p>이메일 수신 여부</p>
	<input type="radio" name="agree" value="yes"> 예 
	<input type="radio" name="agree" value="no"> 아니오 
	<br/><br/>
	<p>관심사항</p>
	<input type="checkbox" name="interest" value="internet">IT/인터넷
	<input type="checkbox" name="interest" value="movie">영화
	<input type="checkbox" name="interest" value="music">음악
	<input type="checkbox" name="interest" value="book">책
	<input type="checkbox" name="interest" value="food">음식
	<br/><br/>
	<p>핸드폰</p>
	<select name="phone_select">
        <option value="010">010</option>
        <option value="011">011</option>
        <option value="016">016</option>
        <option value="017">017</option>
     </select>
	<input type="text" name="phone" placeholder="핸드폰 뒷자리를 입력하세요">
	<br/><br/>
	<p>자기소개</p>
	<textarea name="introduce" placeholder="자기소개를 입력하세요" >
	</textarea>
	
	<br/><br/>
	<input type="submit" value="전송">
</form>
</body>
</html>