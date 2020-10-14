<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<c:if test="${member != null}">
<h1>${member.mname}님의 페이지</h1>
</c:if>	
<c:if test="${member == null}">
<h1>비회원입니다.</h1>
</c:if>	

	<table border="1">
		
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bnumber}</td>
					<td><a href="/board/view?bnumber=${list.bnumber}">${list.btitle}</a></td>
					<td>${list.bwriter}</td>
					<td>${list.bcontents}</td>
					<td>${list.bdate}</td>
					<td>${list.bhits}</td>
				</tr>
			</c:forEach>

	</table>
	
</body>
</html>