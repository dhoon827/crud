<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function passbtn(){
/* 	console.log("입력 비밀번호"+$("#apassword").val());
	console.log("비밀번호체크"+$("#pwdck").val());
	var pwd = $("#apassword").val();
	var pwdck = $("#pwdck").val();
	console.log("입력 비밀번호"+pwd);
	console.log("비밀번호체크"+pwdck);
	
	if(pwd == pwdck){
		passform.submit();
	}else{
		alert("비밀번호가 틀렸습니다");
	} */
	passform.submit();
}
</script>
<body>
<h1>openpassword.jsp</h1>
<form action="pass" name="passform" method="post">
<label>비밀번호를 입력하세요</label>
<input type="password" id="apassword" name="apassword" /><br />
<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
<input type="hidden" id="pwdck" name="pwdck" value="${view.bpassword}">
<button type="button" onclick="passbtn()">입력</button>
</form>
</body>
</html>