<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atmatrisha User SignUp</title>
	<%@include file="./base.jsp"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<h3>ATMATRISHA</h3>
	<h4>User SignUp</h4>
	<div class="container text-center">
		<form action="handle-user-signup" method="POST">
			<label for="userName">Enter User Name</label>
			<input type="text" class="userName" name="userName" placeholder="Enter userId">
			<label for="password">Enter password</label>
			<input type="password" class="password" name="password" placeholder="Enter password">
			<label for="fullName">Enter Full Name</label>
			<input type="text" class="fullName" name="fullName" placeholder="Enter full name">
			<label for="email">Enter email</label>
			<input type="text" class="email" name="email" placeholder="Enter email">
			<button type="submit">Submit</button>
		</form>
		<a href="user-login" class="btn">User Login</a>
	</div>
</body>
</html>