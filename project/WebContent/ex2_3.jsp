<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
package mypack;  
public class Employee implements java.io.Serializable{  
private int id;  
private String name;  
public Employee(){}  
public void setId(int id){this.id=id;}  
public int getId(){return id;}  
public void setName(String name){this.name=name;}  
public String getName(){return name;}  
}  
</body>
</html>