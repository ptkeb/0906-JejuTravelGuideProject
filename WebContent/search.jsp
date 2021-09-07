<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<jsp:include page="common/sidebar.jsp"/>

<!-- Top menu on small screens -->
<jsp:include page="common/header.jsp"/>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
	
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
	
	<div class="w3-container" id="search" style="margin-top:75px">
	   	<h1 class="w3-xxxlarge w3-text-orange"><b>검색하기</b></h1>
	   	<hr style="width:50px;border:5px solid orange" class="w3-round">
	   	<p>여기에서 검색하면 검색 페이지로 넘어가면서, 해당 결과물도 같이 출력 </p>
	</div>

	<!-- search 구현부 -->
	<form action="searchServ" method = "get">
	<header class="w3-xlarge w3-text-orange">지역</header>
		<input type="radio" id="all" name="region" value="all">전체<br>
		<input type="radio" id="애월" name="region" value="애월">애월<br>
		<input type="radio" id="우도" name="region" value="우도">우도<br>
		<input type="radio" id="성산" name="region" value="성산">성산<br>
	
	<br><header class="w3-xlarge w3-text-orange">분류</header>
		<input type="radio" id="all" name="category" value="all">전체<br>
		<input type="radio" id="nature" name="category" value="nature">대충 자연명소<br>
		<input type="radio" id="sights" name="category" value="sights">관광명소<br>
		<input type="radio" id="restaurant" name="category" value="restaurant">식당<br>
		<input type="radio" id="hotel" name="category" value="hotel">숙박업소<br>
	
	<br><header class="w3-xlarge w3-text-orange">검색</header>
		<input type="search" class="w3-input w3-border" id="searchString" name="searchString"/>
	
		<button type="submit" class="w3-button w3-block w3-padding-large w3-orange w3-margin-bottom">검색하기</button>
	</form>

<!-- End page content -->
</div>

<!-- W3.CSS Container -->
<div class="w3-yellow w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p></div>

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

</body>
</html>
