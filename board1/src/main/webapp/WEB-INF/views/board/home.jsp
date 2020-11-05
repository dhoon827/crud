<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
		<a href="/board/list">게시물 목록</a> 
	<c:if test="${member.mpower == 'C'||member.mpower == 'A'}">
		<a href="/board/write">게시물 작성</a>
	</c:if>
	<c:if test="${member.mpower == 'D'}">
		<a href="/board/authority?overlap=${member.overlap}">등급 업 신청</a>
	</c:if>
	<c:if test="${member.mpower == 'A'}">
		<a href="/board/permissionlist">등업 신청 목록</a>
	</c:if>
	<c:if test="${member == null}">
		<a href="/board/openwrite">게시물 작성(익명)</a>
	</c:if>
	<c:if test="${member == null }">
		<form role="form" method="post" autocomplete="off" action="/board/login">
		<p>
			<label for="mid">아이디</label> <input type="text" id="mid" name="mid" />
		</p>
		<p>
			<label for="mpassword">비밀번호</label> <input type="password"
				id="mpassword" name="mpassword" />
		</p>
		<p>
			<button type="submit">로그인</button>
		</p>
		<p>
			<a href="/board/register">회원가입</a>
		</p>
		</form>
	</c:if>
	<c:if test="${msg == false}">
		<p style="color: #f00;">로그인에 실패. 아이디 또는 패스워드를 다시 입력해주세요.</p>
	</c:if>
	<c:if test="${member != null }">
		<h1>${member.mname}님환영합니다:)</h1>
	</c:if>

	<c:if test="${member != null }">
	<a href="board/logout">로그아웃</a>
	</c:if>
</body>
</html>
