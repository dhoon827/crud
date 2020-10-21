<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function reject(){
		location.href="/board/reject"
	}
</script>
</head>
<body>
<h1>permission.jsp</h1>
<table border="1">
		
			<tr>
				<th>신청 번호</th>
				<th>신청 아이디</th>
				<th>제목</th>
				<th>내용</th>
				<th>신청 상태</th>
				<th>현재 권한</th>
				<th>중복 신청</th>
				<th>승인 여부</th>
			</tr>
				<tr>
					<td>${list.anumber}</td>
					<td>${list.aid}</td>
					<td>${list.atitle}</td>
					<td>${list.acontents}</td>
					<td>${list.astate}</td>
					<td>${list.anow}</td>
					<td>${list.apropose}</td>
					<td>${list.aupdate}</td>
				</tr>

	</table>
				<button onclick="location.href='/board/accept?anumber=${list.anumber}'">승인</button><button onclick="reject()">반려</button>
</body>
</html>