<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시물 작성</title>
<script type="text/javascript">

function write_btn() {
	// submit을 제외한 모든 input태그의 갯수를 가져옴
	    var length = document.forms[0].length-2;
	    for ( var i = 0; i < length; i++) { 
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
	
function openwrite_btn(){
    var length = document.forms[0].length-2;
    for ( var i = 0; i < length; i++) { 
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
<p>로그인</p>
<form name="writeForm" method="post" enctype="multipart/form-data">

<label>제목</label>
<input type="text" id="btitle" name="btitle" /><br />

<label>작성자</label>
<input type="text" id="bwriter" name="bwriter" value="${member.mid}" readonly="readonly" /><br />

<label>내용</label>
<textarea cols="50" rows="5" id="bcontent" name="bcontents"></textarea><br />


<div id="fileIndex">

</div>

<button type="button" onClick="write_btn(); return false" name ="btn1">작성</button>
<button class="fileAdd_btn" type="button" name ="btn2">파일추가</button>	

</form>
</c:if>

<c:if test="${msg == false}">
	<p>익명</p>
	<form name="writeForm" method="post" enctype="multipart/form-data">

<label>제목</label>
<input type="text" id="btitle" name="btitle" /><br />
<label>비밀번호</label>
<input type="password" id="bpassword" name="bpassword" /><br />

<label>작성자</label>
<input type="text" id="bwriter" name="bwriter"/><br />

<label>내용</label>
<textarea cols="50" rows="5" id="bcontent" name="bcontents"></textarea><br />

<label>비밀글</label>
<input type="checkbox" id="asecret" name="asecret" value="1">

<div id="fileIndex">

</div>


<button type="button" onClick="openwrite_btn()" name ="btn1">작성</button>
<button class="fileAdd_btn" type="button" name ="btn2">파일추가</button>	

</form>
</c:if>
	<p><a href="/">홈으로</a></p>
</body>
</html>