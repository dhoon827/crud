<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul> 
<!-- 	<li>
	 	<a href="/board/listPage?num=1">글 목록(페이징)</a> 
	</li> -->
	 <li>
	 	 <a href="/board/list">글 목록</a> 
	 </li>
	 <li>
	 	<a href="/">홈으로</a>
	 </li>
	 <c:if test="${member != null }">
	 <li>
	 	 <a href="/board/write">글 작성</a> 
	 </li> 
	 </c:if>
</ul>