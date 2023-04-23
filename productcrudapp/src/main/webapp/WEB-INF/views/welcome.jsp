<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="./base.jsp"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<style>
	
	@import url('https://fonts.googleapis.com/css2?family=Changa+One:ital@0;1&family=Raleway:ital,wght@0,100;0,400;0,800;0,900;1,300;1,600&display=swap');
		
		body{
			background-color: #5cdb95;
			font-family: 'Raleway', sans-serif;
		}
		
		h1{
			font-weight: 900;
			color: #05386b;
		}
		
		.base-container{
			width: 100%;
		}
		.event{
			display: inline-block; 
			text-align: center;
			width: 30%;
			box-sizing: border-box;
			border: 5px solid #05386b;
			border-radius: 3px;
			padding: 20px 25px;
			margin: 20px;
		}
		.event h3{
			color: #edf5e1;
			padding: 10px;
			font-weight: 900;
		}
		
		.event h5{
			border-top: 1px solid #05386b;
			border-bottom: 1px solid #05386b;
			color: #379683;
			padding: 20px;
			font-weight: 800;
		}
		
		.event h2{
			background-color: #8ee4af;
			padding: 20px auto;
			margin: 15px auto;
		}
		
		.btn{
			margin: 40px;
			font-size: 30px;
			background-color: #05386b;
			color: #edf5e1;
		}
		
		.dashboard{
			text-align: center;
			margin: 30px;
		}
		
		.dashboard .editBookings, .editUsers, .editEvents{
			text-decoration: none;
			color: #05386b;
			background-color: white;
			padding: 15px;
			margin: 30px;
			font-size: 20px;
			transition: 0.5s;
		}
			.dashboard .editBookings:hover{
			text-decoration: none;
			background-color: #05386b;
			color: white;
			padding: 15px;
			margin: 30px;
			font-size: 20px;
		}
		
		.editUsers:hover{
			text-decoration: none;
			background-color: #05386b;
			color: white;
			padding: 15px;
			margin: 30px;
			font-size: 20px;
		}
		.editEvents:hover{
			text-decoration: none;
			background-color: #05386b;
			color: white;
			padding: 15px;
			margin: 30px;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">ATMATRISHA</h1>
					<div class="dashboard">
						<a href="editEvents" class="editEvents">View Events</a>
						<a href="editUsers" class="editUsers">View Users</a>
						<a href="editBookings" class="editBookings">View Bookings</a>
					</div>
			</div>
		</div>
	</div>
</body>
</html>
