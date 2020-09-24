<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>게시판</title> 
</head>
<body>

<!-- <form role="form" method="post" autocomplete="off">
 <p>
  <label for="mid">아이디</label>
  <input type="text" id="mid" name="mid" />
 </p>  
 <p>
  <label for="mpassword">패스워드</label>
  <input type="password" id="mpassword" name="mpassword" />
 </p>
 <p>
  <label for="mname">닉네임</label>
  <input type="text" id="mname" name="mname" />
 </p>
 <p>
   <button type="submit" id="submit" >가입</button>  
 </p>
 <p>
  <a href="/">처음으로</a>
 </p>
 
</form> -->
<form method="post">

<label>아이디</label>
<input type="text" name="mid" /><br />

<label>비밀번호</label>
<input type="text" name="mpassword" /><br />

<label>이름</label>
<input type="text" name="mname" /><br />

<button type="submit">가입하기</button>

  <a href="/">처음으로</a>
</form>
</body>
</html>