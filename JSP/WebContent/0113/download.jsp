<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

out.clear();
out=pageContext.pushBody();
String fileName=request.getParameter("fileName");

ServletContext context=getServletContext();
String downloadPath="/Users/sia/git/repository/JSP/WebContent/upload/";
String filePath=downloadPath+fileName;
File file=new File(filePath);

String mimeType=getServletContext().getMimeType(filePath);

if(mimeType==null)
	mimeType="application.octet-stream";
response.setContentType(mimeType);

String encoding = new String(fileName.getBytes("utf-8"),"8859_1");
response.setHeader("Content-Disposition", "attachment; filename="+encoding);

FileInputStream in=new FileInputStream(file);

ServletOutputStream outStream = response.getOutputStream();

byte b[] = new byte[4096];
int data=0;
while((data=in.read(b,0,b.length))!=-1){
	outStream.write(b,0,data);
}

outStream.flush();
outStream.close();
in.close();
%>