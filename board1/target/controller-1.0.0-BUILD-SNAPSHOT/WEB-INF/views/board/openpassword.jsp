<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h1>bnumber : ${bnumber}<br>bdnumber : ${bdnumber}</h1>
<c:if test="${bdnumber != null}">
<form action="bdpass" name="passform" method="get">
<label>비밀번호를 입력하세요</label>
<input type="hidden" id="bnumber" name="bnumber" value="${bdnumber}">
<input type="password" id="bpassword" name="bpassword" /><br />
<button type="button" class="pwdbtn" onclick="passbtn()">입력</button>
</form>
</c:if>
<c:if test="${bdnumber == null}">
<form action="pass" name="passform" method="get">
<label>비밀번호를 입력하세요</label>
<c:if test="${bnumber != null}">
<input type="hidden" id="bnumber" name="bnumber" value="${bnumber}">
</c:if>
<input type="password" id="bpassword" name="bpassword" /><br />
<c:if test="${view != null}">
<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
</c:if>
<button type="button" class="pwdbtn" onclick="passbtn()">입력</button>
</form>
</c:if>
</body>
</html>