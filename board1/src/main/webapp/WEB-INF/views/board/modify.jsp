<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시물 수정</title>
</head>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form[name='writeForm']");
	$(".write_btn").on("click", function(){
		if(fn_valiChk()){
			return false;
		}
		formObj.submit();
	});
	fn_addFile();
})
function fn_valiChk(){
	var regForm = $("form[name='writeForm'] .chk").length;
	for(var i = 0; i<regForm; i++){
		if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
			alert($(".chk").eq(i).attr("title"));
			return true;
		}
	}
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
var fileNoArry = new Array();
	var fileNameArry = new Array();
	function fn_del(value, name){
		
		fileNoArry.push(value);
		fileNameArry.push(name);
		$("#fileNoDel").attr("value", fileNoArry);
		$("#fileNameDel").attr("value", fileNameArry);
		$("#remove").remove();
	}
</script>
<body>

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<form name="updateForm" role="form" method="post" enctype="multipart/form-data">
	<input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
	<input type="hidden" id="fileNameDel" name="fileNameDel[]" value=""> 
<label>제목</label>
<input type="text" name="btitle" value="${view.btitle}" /><br />

<label>작성자</label>
<input type="text" name="bwriter"value="${view.bwriter}"  /><br />

<label>내용</label>
<textarea cols="50" rows="5" name="bcontents">${view.bcontents}</textarea><br />

<label>첨부파일</label>
<div id="fileIndex">
	<c:forEach var="file" items="${file}" varStatus="var">
		<div id="remove">
			<input type="hidden" id="FILE_NO" name="FILE_NO_${var.index}" value="${file.FILE_NO }">
			<input type="hidden" id="FILE_NAME" name="FILE_NAME" value="FILE_NO_${var.index}">
			<a href="#" id="fileName" onclick="return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)
			<button id="fileDel" onclick="fn_del('${file.FILE_NO}','FILE_NO_${var.index}');" type="button">삭제</button><br>
		</div>
	</c:forEach>
</div>
<button class="write_btn" type="submit">완료</button>
<button type="button" class="fileAdd_btn">파일추가</button>

</form>
</body>
</html>