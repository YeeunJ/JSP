<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styles/demo.css">
<title>Templete</title>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<%@ include file="header.html" %>

<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
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
  </header>

  <!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/w3images/mountains.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity" onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/mountains.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/w3images/lights.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"  onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/lights.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="/w3images/nature.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"  onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/nature.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
  </div>

  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/w3images/p1.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity" onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/p1.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/w3images/p2.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity" onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/p2.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="/w3images/p3.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity" onmouseover="this.src = 'http://marin.dothome.co.kr/2020Camp/img/winter.webp';" onmouseout="this.src='/w3images/p3.jpg'">
      <div class="w3-container w3-white">
        <p><b>Lorem Ipsum</b></p>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      </div>
    </div>
  </div>
  
<%@ include file="footer.html" %>
</div>
<script>
// Script to open and close sidebar
function submitChecked(){

}
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

</script>
</body>
</html>