package com.templete;

public class Post {
	private String id, subject, context, file1, file2;
	
	public Post(String id, String subject, String context, String file1, String file2){
		this.id=id;
		this.subject=subject;
		this.file1=file1;
		this.file2=file2;
		this.context=context;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getFile2() {
		return file2;
	}
	public void setFile2(String file2) {
		this.file2 = file2;
	}
}
