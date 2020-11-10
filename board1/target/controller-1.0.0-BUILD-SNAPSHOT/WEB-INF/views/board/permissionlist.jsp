<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>permissionlist.jsp</h1>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<table border="1">
		
			<tr>
				<th>신청 번호</th>
				<th>신청 아이디</th>
				<th>제목</th>
				<th>신청 상태</th>
				<th>중복 신청</th>
				<th>승인 여부</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.anumber}</td>
					<td>${list.aid}</td>
					<td><a href="/board/permission?anumber=${list.anumber}">${list.atitle}</a></td>
					<td>${list.astate}</td>
					<td>${list.apropose}</td>
					<td>${list.aupdate}</td>
				</tr>
			</c:forEach>

	</table>
</body>
</html>