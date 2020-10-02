<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	<label>제목</label> ${view.btitle}
	<br />

	<label>작성자</label> ${view.bwriter}
	<br />

	<label>내용</label>
	<br /> ${view.bcontents}
	<br />
		
	<span>파일 목록</span>
	<div style="border: 1px solid #dbdbdb;">
		<c:forEach var="file" items="${file}">
			<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
		</c:forEach>
	</div>
	<div>
		<a href="/board/modify?bnumber=${view.bnumber}">게시물 수정</a>,<a
			href="/board/delete?bnumber=${view.bnumber}">게시물 삭제</a>
	</div>
</body>
</html>