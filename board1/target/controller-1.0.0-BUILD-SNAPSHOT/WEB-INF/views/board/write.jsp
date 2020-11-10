<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시물 작성</title>
<script type="text/javascript">
/* $(document).ready(function(){
	var formObj = $("form[name='writeForm']");
	$(".write_btn").on("click", function(){
		if()
		formObj.submit();
	});
	fn_addFile();
}) */

/*  function write_btn(){

  	if($("#btitle").val() == null || $("#btitle").val() == ""){
		alert("비어있다.");
		return false;
	}else {
	 writeForm.submit(); 
	}
	
}  */

function write_btn() {
	// submit을 제외한 모든 input태그의 갯수를 가져옴
	var wrName = document.forms[0][4];
	/* console.log(wrName); */
	
	    var length = document.forms[0].length-2;
	    for ( var i = 0; i < length; i++) { 
	    /* 	console.log(document.forms[0].elements[i]); */
	 		if (document.forms[0][i].value == null
	                || document.forms[0][i].value == "") {
	        	console.log(length+"실패");
	            alert(document.forms[0][i].name + "을(를) 입력하세요.");
	          return false;
	        }else{
	        	console.log("성공");
	        	
	        	}
	    }
	        	writeForm.submit();
	}




function fn_addFile(){
	var fileIndex = 1;
	$(".fileAdd_btn").on("click", function(){
		$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");

	});
	$(document).on("click","#fileDelBtn", function(){
		$(this).parent().remove();
		
	});
}


</script>
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
 
</div>
<c:if test="${msg == null}">
<form name="writeForm" method="post" enctype="multipart/form-data">

<label>제목</label>
<input type="text" id="btitle" name="btitle" /><br />

<label>작성자</label>
<input type="text" id="bwriter" name="bwriter" value="${member.mid}" readonly="readonly" /><br />

<label>내용</label>
<textarea cols="50" rows="5" id="bcontent" name="bcontents"></textarea><br />


<div id="fileIndex">

</div>
<!-- <label>파일첨부</label>
<input type="file" name="file" /><br />
 -->


<button type="button" onClick="write_btn(); return false" name ="btn1">작성</button>
<button class="fileAdd_btn" type="button" name ="btn2">파일추가</button>	

</form>
</c:if>
<c:if test="${msg == false}">
	<p>로그인을 하셔야 글을 작성할 수 있습니다.</p>
	<p><a href="/">홈으로</a></p>
</c:if>
</body>
</html>