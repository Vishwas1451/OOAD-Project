<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atmatrisha User Login</title>
	<%@include file="./base.jsp"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<h3>ATMATRISHA</h3>
	<h4>User Login</h4>
	<div class="container text-center">
		<form action="handle-user-login" method="POST">
			<label for="userId">Enter user name</label>
			<input type="text" class="userId" name="userId" placeholder="Enter userId">
			<label for="userPwd">Enter password</label>
			<input type="password" class="userPwd" name="userPwd" placeholder="Enter password">
			<button type="submit">Login</button>
		</form>
		<a href="${pageContext.request.contextPath }/" class="btn">Admin Login</a>
		<a href="user-signup" class="btn">Sign Up</a>
	</div>
</body>
</html>