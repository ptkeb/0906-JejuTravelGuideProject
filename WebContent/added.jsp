<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<table border="1" style="margin-left: 320px; margin-right: auto; width:900px; font-family:Cute font; text-align: center; font-size:32px; background-color:#EEFFF2" >
<tr> 
<th style="width:100px">이름</th><th style="width:200px">이름전체</th><th style="width:100px">지역</th><th style="width:100px">분류</th><th style="width:500px">사진경로</th>
<tr> 
<td style="width:100px">${requestScope.id}</td>
<td style="width:200px">${requestScope.name}</td>
<td style="width:100px">${requestScope.region}</td>
<td style="width:100px">${requestScope.category}</td>
<td style="width:500px">${requestScope.url}</td>
</tr>
</table>
<jsp:include page = "addSight.jsp"/>