<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang=ko>
<title>지역 정보</title>
<link rel="icon" href="images/제주1.png" type="image/x-icon">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="css/seongsan.css">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">

<!-- Sidebar/menu -->
<jsp:include page="common/sidebar.jsp"/>

<!-- Top menu on small screens -->
<jsp:include page="common/header.jsp"/>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<body style="font-family:Cute font; font-size:32px; background-color:#DBFFE3">
<div class="w3-main" style="margin-left:340px;margin-right:40px">


	<h1 style="font-family:Stylish; font-size:96px">제주 성산</h1> <br>
	<img alt="제주마을지도_성산읍" src="images/제주마을지도_성산읍.jpg">
	<br><hr><br>
	
	<h2 style="font-family:Stylish; font-size:64px">성산일출봉</h2>
	<img alt="성산일출봉" src="images/성산일출봉.png">
	<p>
	과거 신혼여행이나 수학여행으로 제주를 찾던 관광객들의 필수 코스였을 ’성산일출봉‘은 뻔한 관광지이지만 그래도 빼놓을 수 없는 명소 중 하나이다.<br>
	푸른 바다 위에 우뚝 솟은 모양이 감탄을 자아내며 천연기념물로 지정될 만큼 지질학적으로도 높은 가치를 지녔다. 탐방로는 두 개로 나뉘는데,<br>
	좌측 해안 쪽은 무료 탐방 구간이고 정상에 오를 수 있는 우측 탐방 구간의 경우만 관람권을 구매하면 된다.<br>
	현재 코로나19로 인해 1일 1,200명으로 입장객을 제한하고 있으니 우측 탐방로를 이용하고 싶다면 아침 일찍 방문하는 것을 추천한다.<br>
	일출 명소로 워낙 유명하고, 우도까지 볼 수 있는 탁 트인 전망도 훌륭한데다가, 보트 체험, 승마체험 등 다양한 즐길 거리까지 있으니 <br>
	아직 가보지 않았다면 여행 일정에 꼭 넣어두길 바란다.
	</p>
	<br><hr><br>
	
	<h2 style="font-family:Stylish; font-size:64px">광치기 해변</h2>	
	<img alt="광치기 해변 사진" src="images/광치기.jpg">
	<p>
	성산일출봉에서 섭지코지로 향하는 길목에 있는 광치기 해변은 제주올레 1코스의 마지막이자 2코스가 시작되는 곳이다.<br>
	펄펄끓던 용암이 바다와 만나 빠르게 굳어지며 형성된 지질구조가 특징이며, 특히 썰물때는 바닷물에 가려있던 비경들이 속속들이 들어나 숨은 비경을 선사한다.<br>
	용암 지질과 녹색 이끼가 연출하는 장관은 전 세계 어디서도 볼 수 없는 풍경을 자아내어 많은 사진작가들이 찾는 사진명소이기도 하다.<br>	
	특히 성산일출봉 옆으로 뜨는 일출을 한 프레임에 담을 수 있어 연말연시에 많은 사람들이 찾는다.<br>
	광치기 해변의 모래는 현무암의 풍화작용으로 오랜 세월에 걸쳐 만들어진 입자로, 검은 색을 띄는 것이 특징이다.
	</p>
	<br><hr><br>
	
	<h2 style="font-family:Stylish; font-size:64px" >섭지코지</h2>
	<img alt="섭지코지 사진" src="images/섭지코지.png">
	<p>
	각종 드라마와 영화 촬영지로 알려지면서 많은 관광객이 찾기 시작한 ’섭지코지‘는 성산 지역을 대표하는 명소로 손꼽히는 곳이다.<br>
	길을 따라 오르며 바다를 바라보는 것도 좋지만, 살짝 숨이 가빠 올 무렵 잠시 걸음을 멈추고 뒤돌아봤을 때 펼쳐지는 풍경이 장관이다.<br>
	언덕 끝에 다다르면 유채밭이 드넓게 펼쳐지고, 그 너머로 우뚝 솟은 붉은오름 위에 하얀 ’방두포등대‘가 그림 같다.<br>
	계단을 따라 올라가면 촛대 모양으로 솟은 ’선돌바위‘를 비롯, 해안 절경을 가까이서 감상할 수 있다.<br>
	옆쪽으로는 안도 다다오가 설계한 건축물로 유명한 ’유민미술관‘과 ’글라스하우스‘가 자리 잡고 있다. 시간적인 여유가 있다면 작품도 감상하고,<br>
	카페와 레스토랑에서 잠시 쉬어가면 좋을 것 같다.
	</p>
	<br><hr><br>
</div>
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
	
	// 바뀌는 이미지
	var imgArray=new Array(); 
	imgArray[0]="images/광치기" 
	imgArray[1]="images/섭지코지"
	imgArray[2]="images/성산일출봉"; 
	
	//바뀌는 이미지
	function showImage(){ 
		var imgNum=Math.round(Math.random()*3); 
		var objImg=document.getElementById("introimg"); 
		objImg.src=imgArray[imgNum];
		setTimeout(showImage,2000);
	}

</script>	
</body>
</html>