package com.first;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class download extends HttpServlet {
	private static final long serialVersionUID=1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String file="test.txt";
		String path="/Users/sia/git/repository/JSP/WebContent/upload/";
		response.setHeader("Content-Disposition", "attachment; filename=\""+file+"\"");
		
		FileInputStream fileInputStream=new FileInputStream(path+file);
		
		int i;
		while((i=fileInputStream.read())!=-1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
	}
}
