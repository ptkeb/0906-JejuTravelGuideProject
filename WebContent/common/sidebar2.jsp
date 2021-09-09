<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">    
    
<nav class="w3-sidebar w3-orange w3-collapse w3-top w3-xxlarge w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar">
  	<img src="images/제주관광.jpg" style="width:140px; height:140px; margin-top: 20px; margin-right: auto" >
    <h3 class="w3-padding-small w3-center" style="margin-top: 20px"><b style="font-family:Cute font; font-size:58px">제주도<br>관광<br>안내서</b></h3>
  <hr style="width:260px;border:4px solid red" class="w3-round">
  <div class="w3-bar-block w3-center">
    <a href="index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="region.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">지역소개</a> 
    <a href="search.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">검색하기</a> 
    <a href="addSight.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">장소 등록하기</a> 
    <a href="index.html#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">연락처</a>
  </div>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:32px">메뉴 닫기</a>
</nav>