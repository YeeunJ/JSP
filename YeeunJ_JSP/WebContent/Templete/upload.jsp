<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload image</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styles/demo.css">
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<div class="w3-container">
    <h1><b>My Portfolio</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span>
      <button class="w3-button w3-black">ALL</button>
      <button type = button class="w3-button w3-white" onclick="location.href='templete_main.jsp'"><i class="fa fa-diamond w3-margin-right"></i>Main</button>
      <button type = button class="w3-button w3-white w3-hide-small" onclick="location.href='upload.jsp'"><i class="fa fa-photo w3-margin-right"></i>Upload image</button>
      <button type = button class="w3-button w3-white w3-hide-small" onclick="location.href='edit.jsp'"><i class="fa fa-map-pin w3-margin-right"></i>Edit image</button>
    </div>
    </div>
    <hr class="w3-opacity">
    <div style="width:80%;margin-left:20px;">
	    <form action="uploadProcess.jsp" method="post" enctype="multipart/form-data">
	      <div class="w3-section">
	        <label>Name</label>
	        <input class="w3-input w3-border" type="text" name="id" placeholder="Enter Name" required>
	      </div>
	      <div class="w3-section">
	        <label>subject</label>
	        <input class="w3-input w3-border" type="text" name="subject" placeholder="Enter Subject" required>
	      </div>
	      <div class="w3-section">
	        <label>image file1</label>
	        <input class="w3-input w3-border" type="file" name="file1" required>
	      </div>
	      <div class="w3-section">
	        <label>image file2</label>
	        <input class="w3-input w3-border" type="file" name="file2" required>
	      </div>
	      <div class="w3-section">
	        <label>context</label><br>
	        <textarea rows="8" cols="80" placeholder="Enter context" name="context"></textarea>
	      </div>
	      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Submit</button>
	    </form>
    </div>
</body>
</html>