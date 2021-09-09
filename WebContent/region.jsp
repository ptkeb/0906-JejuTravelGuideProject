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
<!-- Sidebar/menu -->
<jsp:include page="common/sidebar2.jsp"/>

<!-- Top menu on small screens -->
<jsp:include page="common/header.jsp"/>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
	
<!-- !PAGE CONTENT! -->
<body style="font-family:Cute font; text-align: center; font-size:32px; background-color:#EEFFF2">
<div class="w3-main" style="margin-left:340px;margin-right:40px">

					<a href="seongsan.jsp" style="font-size:100px; text-decoration: none;">성산<br>
					<img alt="성산일출봉" src="images/성산일출봉.png" style="width: 1000px; height: auto;"></a><br>
					<br>
					<hr style="width:auto;border:4px solid orange" class="w3-round">
					<a href="namwon.jsp" style="font-size:100px;text-decoration: none;">남원읍<br>
					<img alt="큰엉해안경승지" src="images/큰엉해안경승지.png" style="width: 1000px; height: auto;"></a><br>
					<br>
					<hr style="width:auto;border:4px solid orange" class="w3-round">
					<a href="hanlim.jsp" style="font-size:100px;text-decoration: none;">한림읍<br>
					<img alt="비양도" src="images/비양도.png" style="width: 1000px; height: auto;"></a><br>

<!-- page content end -->
</div>

</body>
</html>