<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function write_btn(){
		writeForm.submit();
	}
</script>
</head>
<body>
<h1>authority.jsp</h1>
<form name="writeForm" method="post">
<label>신청 아이디</label>
<input type="text" id="aid" name="aid" value="${member.mid}" readonly /><br />

<label>제목</label>
<input type="text" id="atitle" name="atitle" /><br />

<label>내용</label>
<textarea cols="50" rows="5" id="acontents" name="acontents"></textarea><br />

<input type="hidden" id="anow" name="anow" value="${member.mpower}">
<div id="fileIndex">

</div>
<!-- <label>파일첨부</label>
<input type="file" name="file" /><br />
 -->


<button type="button" onClick="write_btn(); return false" name ="btn1">신청하기</button>

</form>

</body>
</html>