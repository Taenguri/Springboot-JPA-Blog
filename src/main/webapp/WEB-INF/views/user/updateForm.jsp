<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div class="container">
	<input type="hidden" id="id" value="${principal.user.id }" />
	<form>
		<div class="form-group">
			<label for="username">Username</label> <input type="text" value="${principal.user.username }" class="form-control" placeholder="Enter username" id="username" readonly>
		</div>
		<c:if test="${empty principal.user.oauth }">
			<div class="form-group">
				<label for="password">Password</label> <input type="password" class="form-control" placeholder="Enter password" id="password">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" value="${principal.user.email }" class="form-control" placeholder="Enter email" id="email">
			</div>
		</c:if>
		<c:if test="${not empty principal.user.oauth }">
			<div class="form-group">
				<label for="email">Email</label> <input type="email" value="${principal.user.email }" class="form-control" placeholder="Enter email" id="email" readonly>
			</div>
		</c:if>
	</form>
	<c:if test="${empty principal.user.oauth }">
		<button id="btn-update" class="btn btn-dark">회원정보수정</button>
	</c:if>
</div>

<script src="/js/user.js"></script>
<%@include file="../include/footer.jsp"%>




