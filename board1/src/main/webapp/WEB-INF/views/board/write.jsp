<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<form method="post">

<label>제목</label>
<input type="text" name="btitle" /><br />

<label>작성자</label>
<input type="text" name="bwriter" value="${member.mname }" readonly="readonly" /><br />

<label>내용</label>
<textarea cols="50" rows="5" name="bcontents"></textarea><br />

<button type="submit">작성</button>

</form>
</body>
</html>