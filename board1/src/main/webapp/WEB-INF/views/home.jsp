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
<form role="form" method="post" autocomplete="off">
 <p>
  <label for="mid">아이디</label>
  <input type="text" id="mid" name="mid" />
 </p>
 <p>
  <label for="mpassword">아이디</label>
  <input type="password" id="mpassword" name="mpassword" />
 </p>
 <p><button type="submit">로그인</button></p>
 <p><a href="/board/register">회원가입</a></p>
</form>

</body>
</html>
