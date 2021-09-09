<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang=ko>
<title>장소 등록</title>
<link rel="icon" href="images/제주1.png" type="image/x-icon">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Cute font", Poppins, sans-serif}
body {font-size:24px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body style="font-family:Cute font; font-size:32px; background-color:#EEFFF2">
<!-- Sidebar/menu -->
<jsp:include page="common/sidebar.jsp"/>

<!-- Top menu on small screens -->
<jsp:include page="common/header.jsp"/>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
	
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
	
	<div class="w3-container" id="search" style="margin-top:75px">
	   	<h1 class="w3-text-orange" style="font-size:96px"><b>장소 등록하기</b></h1>
	   	<hr style="width:50px;border:5px solid orange" class="w3-round">
	</div>

	<!-- search 구현부 -->
	<form action="insertServ" method = "post">
	<header class="w3-xxxlarge w3-text-orange">이름간략하게</header>
		<input type="search" class="w3-input w3-border" id="simpleName" name="simpleName" placeholder="이름을 간략하게 입력해주세요" required>
	
	<header class="w3-xxxlarge w3-text-orange">장소이름</header>
		<input type="search" class="w3-input w3-border" id="name" name="name" placeholder="이름을 입력해주세요" required>
	
	<header class="w3-xxxlarge w3-text-orange">지역</header>
		<input type="search" class="w3-input w3-border" id="region" name="region" placeholder="지역을 입력해주세요" required>
	
	<header class="w3-xxxlarge w3-text-orange">분류</header>
		<input type="search" class="w3-input w3-border" id="category" name="category" placeholder="분류를 입력해주세요 자연/명소/맛집/숙박 중 선택" required>
		
		<button type="submit" class="w3-button w3-block w3-padding-large w3-orange w3-margin-bottom">등록하기</button>
	</form>
	

<!-- End page content -->
</div>


<!-- W3.CSS Container -->
<div class="w3-yellow w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://github.com/ptkeb" title="대안" target="_blank" class="w3-hover-opacity">대안</a>&<a href="https://github.com/minstitia" title="상민" target="_blank" class="w3-hover-opacity">상민</a></p></div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>
</html>