<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
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
	}else{
		alert("비밀번호가 틀렸습니다");
	}  */
		passform.submit();
}

/* $(".pwdbtn").click(function(){
	
}) */
</script>
<body>
<h1>openpassword.jsp</h1>
<form action="pass" name="passform" method="get">
<label>비밀번호를 입력하세요</label>
<input type="password" id="bpassword" name="bpassword" /><br />
<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
<button type="button" class="pwdbtn" onclick="passbtn()">입력</button>
</form>
</body>
</html>