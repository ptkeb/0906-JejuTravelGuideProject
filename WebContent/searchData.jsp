<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

	여기서는 Servlet에서 받아온 데이터를 출력합니다.
	include로 불러와주세요.
<table border="1">
	<tr>   
		<th>프로젝트 id</th><th>프로젝트명</th><th>재능기부자 id</th>
	<c:forEach items="${requestScope.searchResult}" var="data">
		 <tr>
		 	<td>${data.sightName}</td>
		 	<td>${data.sightRegion}</td>
		 	<td>${data.sightCategory}</td>
		 </tr>
	 </c:forEach>
	</tr>
</table>