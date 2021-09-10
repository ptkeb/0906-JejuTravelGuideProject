<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<table border="1" style="margin-left: auto; margin-right: auto; width:auto; font-family:Cute font; text-align: center; font-size:32px; background-color:#EEFFF2" >
<tr> 
<th style="width:100px">이름</th><th style="width:200px">이름전체</th><th style="width:100px">지역</th><th style="width:100px">분류</th><th style="width:500px">사진경로</th>
<tr> 
<td>${requestScope.id}</td>
<td>${requestScope.name}</td>
<td>${requestScope.region}</td>
<td>${requestScope.category}</td>
<td>${requestScope.url}
</tr>
</table>
<jsp:include page = "addSight.jsp"/>