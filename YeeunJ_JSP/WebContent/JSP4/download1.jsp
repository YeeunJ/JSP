<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>download</title>
</head>
<body>
	 <%    
	  String filename = "index.jsp";   
	  String filepath = "/Users/jeong-yeeun/git/JSP/YeeunJ_JSP/YeeunJ_JSP/WebContent/JSP4/";   
	  response.setContentType("APPLICATION/OCTET-STREAM");   
	  response.setHeader("Content-Disposition","attachment; filename = \" "  + filename +  "\"" );   
	  
	  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
	            
	  int i;   
	  while ((i=fileInputStream.read()) != -1) {  
	    out.write(i);   
	  }   
	  fileInputStream.close();   
	%>   
</body>
</html>