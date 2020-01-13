<%@page import="com.hello.CRUD_UserDao"%>  
<jsp:useBean id="u" class="com.hello.CRUD_User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=CRUD_UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  