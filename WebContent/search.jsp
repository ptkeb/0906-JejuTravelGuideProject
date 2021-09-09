<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<title>찾아보기</title>
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
	   	<h1 class="w3-text-orange" style="font-size:96px"><b>검색하기</b></h1>
	   	<hr style="width:50px;border:5px solid orange" class="w3-round">
	</div>

	<!-- search 구현부 -->
	<form action="searchServ" method = "post">
	<header class="w3-xxxlarge w3-text-orange">지역</header>
		<input type="radio" id="all" name="region" value="all" checked="checked">전체<br>
		<input type="radio" id="애월" name="region" value="'애월'">애월<br>
		<input type="radio" id="우도" name="region" value="'우도'">우도<br>
		<input type="radio" id="성산" name="region" value="'성산'">성산<br>
	
	<br><header class="w3-xxxlarge w3-text-orange">분류</header>
		<input type="radio" id="all" name="category" value="all" checked="checked">전체<br>
		<input type="radio" id="자연" name="category" value="'자연'">대충 자연명소<br>
		<input type="radio" id="명소" name="category" value="'명소'">관광명소<br>
		<input type="radio" id="맛집" name="category" value="'맛집'">식당<br>
		<input type="radio" id="숙박" name="category" value="'숙박'">숙박업소<br>
	
	<br><header class="w3-xxxlarge w3-text-orange">검색</header>
		<input type="search" class="w3-input w3-border" id="searchString" name="searchString" placeholder="찾으시려는 단어를 입력하세요">
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
