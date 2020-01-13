<%@page import="com.hello.CRUD_UserDao"%>  
<jsp:useBean id="u" class="com.hello.CRUD_User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=CRUD_UserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  