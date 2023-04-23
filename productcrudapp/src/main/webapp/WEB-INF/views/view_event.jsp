<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Single Event Display</title>
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
			background-color: #8ee4af;
			box-sizing: border-box;
			border: 1px solid #05386b;
			border-radius: 3px;
			padding: 20px 25px;
			margin: 20px;
		}
		.event input{
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
			border-bottom: 1px solid #05386b;
			padding: 20px;
			margin: 15px;
			
		}
		
		.btn, .book{
			margin: 40px;
			font-size: 20px;
			background-color: #05386b;
			color: #edf5e1;
		}
		.book{
		font-size: 18px;
		border-radius: 4px;
		}
		
		.peopleLimit{
			text-align: center;
			width: 60px;
			font-size: 20px;
			border-radius: 4px;
		}
		
	</style>
</head>
<body>
	<h1 class="text-center mb-3">ATMATRISHA</h1>
		<div class="base_container">
			<div class="event">
				<form action="book-event" method="POST">
				<input class="eventName" id="eventName" name = "eventName" value="${product.name }">
				<input value="${product.description }">
				<input name="price" class = "price" id="price" value="${product.price }"> 
				<button type="submit">Book</button>
				</form>		
			</div>					
			
		</div>
	
				<div class="container text-center">
					<a href="event-disp" class="btn">Back</a>
				</div>

</body>
</html>
