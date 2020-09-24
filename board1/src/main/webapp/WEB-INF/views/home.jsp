<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<c:if test="${member == null}">
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
	<p style="color:#f00;">로그인에 실패하였습니다. 아이디 또는 패스워드를 다시 입력해주세요.</p>
</c:if>
<c:if test="${member != null}">
<p>${member.mname}아 환영한다.</p>
<a href="board/logout">로그아웃</a>
</c:if>
</body>
</html>
