<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<html>
<head>
	<title>Home</title>
</head>
<script>
$(document).ready(function(){
	console.log('${session.member}')
})
</script>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p>
	<a href="/board/list">게시물 목록</a>
	<a href="/board/write">게시물 작성</a>
</p>

<%-- <c:if test="${member == null}"> --%>
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

<h1>${member}님의 페이지</h1>
<h1>${member2.mname}님의 페이지</h1>
아 환영한다.

<a href="board/logout">로그아웃</a>
<%-- </c:if> --%>
</body>
</html>
