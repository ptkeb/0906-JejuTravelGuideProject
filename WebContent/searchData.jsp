<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<jsp:include page="common/sidebar.jsp"/>

<br>
<br>
<br>

<table border="1" style="margin-left: auto; margin-right: auto; width:auto; font-family:Cute font; text-align: center; font-size:32px; background-color:#EEFFF2" >
	<tr>   
		<th style="width:200px">지역이름</th><th style="width:500px">사진</th><th style="width:200px">지역</th><th style="width:200px">분류</th>
	<c:forEach items="${requestScope.searchResult}" var="data">
		 <tr>
		 	<td>${data.sightName}</td>
		 	<td><img src="images/${data.sightName}.png" style="width:500px"></td>
		 	<td>${data.sightRegion}</td>
		 	<td>${data.sightCategory}</td>
		 </tr>
	 </c:forEach>
	</tr>
</table>
<jsp:include page = "search.jsp"/>