<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="jsp.userDB" %>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 회원가입</title>
</head>
<body>

 <jsp:useBean id="user" class="jsp.userBean"/>
 <jsp:setProperty name="user" property="*"/>
<%
	if(user.getUserID() == null || user.getUserPwd()==null || user.getUserName()==null || user.getUserEmail()==null || user.getUserGender()==null){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 되지 않은 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else{
		userDB userDB=new userDB();
		int result=userDB.join(user);
		if(result==-1){
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("alert('이미 사용하고 있는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else{
			session.setAttribute("userID",user.getUserID());
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("alert('DB 연결 성공')");
			script.println("</script>");
		}
	
}


%>

</body>
</html>