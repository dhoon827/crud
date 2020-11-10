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
/* $(document).ready(function(){
	console.log("msg : "+msg);
	console.log("view : "+view);
}) */
$(document).ready(function(){
    if(${msg != null}){
    var msg = '${msg}';
    console.log('${msg}');
    	alert(msg);
    }
})
function passbtn(){
		passform.submit();
}

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