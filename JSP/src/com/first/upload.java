package com.first;
import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class upload {
	private static final long serialVersionUID = 1L;
	
	public upload() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		if(ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for(FileItem item: multiparts) {
					if(!item.isFormField()) {
						String name =new File(item.getName()).getName();
						item.write(new File("/Users/sia/git/repository/JSP/WebContent/upload"+File.separator+name));
					}
				}
				
				request.setAttribute("message", "File Uploaded Successfully");
			}
			catch(Exception e) {
				request.setAttribute("message", "File Upload Failed due to "+e);
			}
		}
		else {
			request.setAttribute("message", "No File found");
		}
		request.getRequestDispatcher("/result.jsp").forward(request,response);
	}
}
