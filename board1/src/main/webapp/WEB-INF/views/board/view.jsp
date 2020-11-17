<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시물 조회</title>
<script>
function fn_fileDown(fileNo){
	var formObj = $("form[name='readForm']");
	$("#FILE_NO").attr("value", fileNo);
	formObj.attr("action", "/board/fileDown");
	formObj.submit();
}

/* $(".modbtn").click(function(){
	var bnumber = $("#bnumber").val();
	var bdnumber = 0
	$.ajax({
		url : "/board/openpassword",
		type : "post",
		data : {"bnumber" : bnumber, "bdnumber" : bdnumber},
		dataType : "json",
		success : function(data){
			
		}error : function(data){
			alert("잠시후에 다시해주세요");
			return false;
		}
	});
});

$(".delbtn").click(function(){
	var bnumber = 0
	var bdnumber = $("#bdnumber").val();
	$.ajax({
		url : "/board/openpassword",
		type : "post",
		data : {"bnumber" : bnumber, "bdnumber" : bdnumber},
		dataType : "json",
		success : function(data){
			
		}error : function(data){
			alert("잠시후에 다시해주세요");
			return false;
		}
	});
}); */


function test_fn(){
	testForm.action="/board/openpassword";
	console.log(testForm);
	testForm.submit();
}

function test_fn2(){
	testForm2.action="/board/openpassword";
	console.log(testForm);
	testForm2.submit();
}



</script>
</head>
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	
	<form name="readForm" role="form" method="post">
		<input type="hidden" id="FILE_NO" name="FILE_NO" value=""> 
	</form>
				
	<label>제목</label> ${view.btitle}
	<br />

	<label>작성자</label> ${view.bwriter}
	<br />

	<label>내용</label>
	<br /> ${view.bcontents}
	<br />
		
	<span>파일 목록</span>
	<div style="border: 1px solid #dbdbdb;">
		<c:forEach var="file" items="${file}">
			<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
		</c:forEach>
	</div>
	<h1>test1 ${member.mid}</h1><br>
	<h1>test2 ${member}</h1><br>
	<h1>test3 ${view.asecret}</h1><br>
	<div>
	<c:if test="${member.mid == view.bwriter}">
		<a href="/board/modify?bnumber=${view.bnumber}">게시물 수정</a>
	</c:if>
	<c:if test="${member.mid == view.bwriter || member.mpower == 'A'}">
		<a href="/board/delete?bnumber=${view.bnumber}">게시물 삭제</a>
	</c:if>
 	<c:if test="${member == null && view.asecret == 0}">
 	
 	
 	<form name="testForm" method="post">
		<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
		<input type="hidden" id="bdnumber" name="bdnumber" value="">
		<a href="javascript:;" onclick="test_fn2(); return false">게시물 삭제</a>
		<a href="javascript:;" onclick="test_fn(); return false">게시물 수정</a>
 	</form>
 	

 	
 	
 <%-- 	<form action="/board/openpassword" name="pwdform" method="post">
		<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
		<input type="hidden" id="bdnumber" name="bdnumber" value="2">
		<input type="submit" class="modbtn" value="게시물 수정">
 	</form>
 	
 	
		<a href="/board/openpassword?bnumber=${view.bnumber}">게시물 수정</a>
		<a href="/board/openpassword?bdnumber=${view.bnumber}">게시물 삭제</a>
		
		
 	<form action="openpassword" name="pwdform2">
		<input type="hidden" id="bnumber" name="bnumber" value="${view.bnumber}">
		<input type="hidden" id="bdnumber" name="bdnumber" value=1>
		<button onclick="submit" class="delbtn">게시물 삭제</button>
 	</form> --%>
		익명 공개글
	</c:if> 
	
	
	<c:if test="${member == null && view.asecret == 1}">
		<a href="/board/modify?bnumber=${view.bnumber}">게시물 수정</a>
		<a href="/board/delete?bnumber=${view.bnumber}">게시물 삭제</a>
		익명 비밀글
	</c:if>
	
	 
	</div>
</body>
</html>