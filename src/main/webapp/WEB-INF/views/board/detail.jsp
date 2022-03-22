<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>

<div class="container">
		<div>
			board Number : <span id="id"><i>${board.id} </i></span>
			Writer : <span><i>${board.user.username} </i></span>
		</div>
		<br/>
		<hr/>
		<div class="form-group">
			<label for="title">Title</label>
			<h3>${board.title}</h3> 
		</div>
		<hr/>
		<div class="form-group">
			<label for="content">Content</label>
			<div>${board.content}</div>
		</div>
		<hr/>
		<br/><br/>
		<button class="btn btn-dark" onclick="history.back()">목록</button>
		<c:if test="${board.user.id == principal.user.id }">
		<a href="/board/${board.id}/updateForm" class="btn btn-dark">수정</a>
		<button id="btn-delete" class="btn btn-dark">삭제</button>
		</c:if>
		
</div>

<script src="/js/board.js"></script>
<%@include file="../include/footer.jsp" %>




