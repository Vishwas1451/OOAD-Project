<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atmatrisha Login</title>
	<%@include file="./base.jsp"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<h3>ATMATRISHA</h3>
	<h4>Admin Login</h4>
	<div class="container text-center">
		<form action="handle-admin-login" method="POST">
			<label for="adminId">Enter admin ID</label>
			<input type="text" class="adminId" name="adminId" placeholder="Enter adminId">
			<label for="adminPwd">Enter password</label>
			<input type="password" class="adminPwd" name="adminPwd" placeholder="Enter password">
			<button type="submit">Login</button>
		</form>
		<a href="user-login" class="btn">User Login</a>
	</div>
</body>
</html>