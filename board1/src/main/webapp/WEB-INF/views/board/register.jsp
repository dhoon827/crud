<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>게시판</title> 
 <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>

<form role="form" method="post" autocomplete="off">
 <p>
  <label for="mid">아이디</label>
  <input type="text" id="mid" name="mid" />
  <button type="button" class="idCheck">중복확인</button>
 </p>  
 <p class="result">
	<span class="msg">아이디를 확인해주세요.</span> 
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
   <button type="submit" id="submit" disabled="disabled">가입</button>  
 </p>
 <p>
  <a href="/">처음으로</a>
 </p>
 
</form>
<script> 
$(".idCheck").click(function(){
 
//var query = {mid : $("#mid").val()}
 var query = $("#mid").val();

 $.ajax({
  url : "/board/idCheck",
  type : "post",
  data : {"mid" : query},
  dataType : "json",  
  success : function(data) {
  
   if(data == 1) {
    $(".result .msg").text("사용 불가");
    $(".result .msg").attr("style", "color:#f00"); 
    $("#submit").attr("disabled", "disabled");
   } else {
    $(".result .msg").text("사용 가능");
    $(".result .msg").attr("style", "color:#00f");
    $("#submit").removeAttr("disabled");
   }
  }
 });  // ajax 끝
});
</script>
</body>
</html>