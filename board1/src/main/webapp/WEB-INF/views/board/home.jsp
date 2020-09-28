<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p>
	<a href="/board/list">게시물 목록</a>
	<a href="/board/write">게시물 작성</a>
</p>
<c:if test="${member == null }">
<form role="form" method="post" autocomplete="off" action="/board/login">
 <p>
  <label for="mid">아이디</label>
  <input type="text" id="mid" name="mid" />
 </p>
 <p>
  <label for="mpassword">비밀번호</label>
  <input type="password" id="mpassword" name="mpassword" />
 </p>
 <p><button type="submit">로그인</button></p>
 <p><a href="/board/register">회원가입</a></p>
</form>
</c:if>
<c:if test="${msg == false}">
	<p style="color:#f00;">로그인에 실패. 아이디 또는 패스워드를 다시 입력해주세요.</p>
</c:if>
<c:if test="${member != null }">
<h1>${member.mname}님 환영합니다 :)</h1>
</c:if>


<a href="board/logout">로그아웃</a>
</body>
</html>
