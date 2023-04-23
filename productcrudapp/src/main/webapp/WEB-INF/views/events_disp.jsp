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
			font-size: 20px;
			background-color: #05386b;
			color: #edf5e1;
		}
		
		
	</style>
	<title>User Events Display</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">ATMATRISHA</h1>
				
					<div class="base_container">
						<c:forEach items="${products }" var="p">
						
							<div class="event">
								<h3>${p.name }</h3>
								<h5>${p.description }</h5>
								<h2>&#x20B9; ${p.price }</h2>
								<a href="view-event/${p.id}" class="btn">View</a>
							</div>
								
								
						</c:forEach>
					</div>
			</div>
		</div>
	</div>
</body>
</html>
