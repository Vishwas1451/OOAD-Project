<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<%@include file="./base.jsp" %>
	
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Changa+One:ital@0;1&family=Raleway:ital,wght@0,100;0,400;0,800;0,900;1,300;1,600&display=swap');
		
		body{
			background-color: #5cdb95;
			font-family: 'Raleway', sans-serif;
		}
		
	</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the event details</h1>
				
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Event Name</label>
						<input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the event name here">
					</div>
					
					<div class="form-group">
						<label for="description">Event Description</label>
						<textarea class="form-control" name ="description" id="description" rows="5" placeholder="Enter the event description"></textarea>
					</div>
					
					<div class="form-group">
						<label for="price">Ticket Price</label>
						<input type="text" class="form-control" id="price" name="price" placeholder="Enter Ticket Price">
					</div>
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/welcome-page" class="btn btn-outline-danger">Back</a>
					</div>
					
					<button type="submit" class="btn btn-primary">Add</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>