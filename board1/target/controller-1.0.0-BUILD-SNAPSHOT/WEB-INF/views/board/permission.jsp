<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function accept(){
		var test1 = $('#act').val();
		$('#aupdate').val(test1);
		powerForm.submit();
	}
	
	function reject(){
		var test2 = $('#rjt').val();
		$('#aupdate').val(test2);
		powerForm.submit();
	}
</script>
</head>
<body>
<h1>permission.jsp</h1>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
${member.mid}
<br>
<form action="/board/accept" name="powerForm" method="post" autocomplete="off">
<input type="hidden" id="anumber" name="anumber" value="${list.anumber}">
<input type="hidden" id="aid" name="aid" value="${list.aid}">
<input type="hidden" id="aupdate" name="aupdate" value="">
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
</form>
				<button onclick="accept()" id="act" value="accept">승인</button>
				<button onclick="reject()" id="rjt" value="reject">반려</button>
</body>
</html>