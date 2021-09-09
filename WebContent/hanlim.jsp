<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>지역 정보</title>
<link rel="icon" href="images/제주1.png" type="image/x-icon">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/region.css">

	

<!-- Sidebar/menu -->
<jsp:include page="common/sidebar.jsp"/>

<!-- Top menu on small screens -->
<jsp:include page="common/header.jsp"/>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

<body>

	<h1>한림읍</h1> <br>
	<img alt="한림읍" src="images/한림읍.png">
	<br><hr><br>
	
	<h2>협재해수욕장</h2>
	<img alt="협재해수욕장 사진" src="images/협재해수욕장.png">
	<p>
	제주의 여름을 대표하는 해수욕장하면 한림 협재해수욕장을 빼놓을 수 없다.<br>
	반짝반짝 빛나는 모래사장 위로 투명한 에머랄드 빛 바다.<br>
	잔잔한 바다 위에 손에 잡힐 듯 가까이 보이는 비양도가 여름을 시원하게 달래주기에 충분하다.<br>
	바다와 섬, 제주스러움과 트렌디한 감성이 돋보이는 이곳 한림에서 색 바랜 사진 속 주인공이 되보는 건 어떨까?  
	</p>
	<br><hr><br>
	
	<h2>비양도</h2>	
  	<img alt="비양도 사진" src="images/비양도.png" />
	<p>
	한림항에서 도항선을 타고 15분이면 비양도에 도착한다.<br>
	화산섬으로 중앙에는 비양봉이 있는 둥그런 모양이다.<br>
	비양봉은 해발 114.1m 정도로 어렵지 않게 정상에 오를 수 있다. 정상에 오르면 하얀 등대가 반갑게 서있다.<br>
	맑은 날에는 한라산 백록담까지 보인다고 하니, 맑은 날에는 비양봉 정상까지 올라보자.<br>
	천천히 해안선을 따라 섬을 한바퀴 도는데 2시간 남짓 소요된다. 섬 여행에서는 내리쬐는 뜨거운 태양을 피하기 쉽지 않다.<br>
	항에서 내리면 자전거 대여가 가능하니 자전거를 타고 시원하게 섬 한바퀴 도는 일정을 추천한다.
	</p>
	<br><hr><br>
	
	<h2>금능해수욕장</h2>
	<img alt="금능해수욕장 사진" src="images/금능해수욕장.png">
	<p>
	협재해수욕장 바로 옆에 쌍둥이 해변으로 불리는 금능해수욕장이있다.<br>
	물이 빠지면 넓고 고운 모래사장이 훤하게 드러난다.<br>
	수심이 낮아 어린아이들이 놀기 좋은 천연풀장이 만들어진다.<br>
	맑은 물 속을 첨벙거리며 바위 틈 속에 남겨진 작은 보말을 찾는 어린이들의 재잘거리는 소리와 웃음이 가득하다.<br>
	금능해수욕장은 야자수가 많아 이국적인 느낌으로 캠핑을 즐길 수 있다. 서쪽여행의 묘미, 지는 해의 멋진 노을도 놓치지 말고 사진으로 남겨두자.
	</p>
	<br><hr><br>

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
	


</script>	
</body>
</html>