<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>BooksPal</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
</head>
<body style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>BooksPal</h3>
			</div>
<hr>
			<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu">Home</a>
				<li><a href="#categorySubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> Category</a>
					<ul class="collapse list-unstyled" id="categorySubmenu">
						<li><a href="#">Children Books</a></li>
						<li><a href="#">Self Help</a></li>
						<li><a href="#">More</a></li>
						
					</ul> <a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>


		</nav>

		<!-- Page Content  -->
		<div id="content" >

			<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height:45px ;opacity:0.6 " >
				<div class="container-fluid" >

					<button type="button" id="sidebarCollapse" class="navbar-btn " >
						<i class="fas fa-align-justify"></i>
											
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation" style="opacity:0.6">
						<i class="fas fa-align-justify"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto" >
							<li class="nav-item" ><a class="nav-link" href="<c:url value='/login'></c:url>" style="color:black">Login</a></li>
							<li class="nav-item" ><a class="nav-link" href="#" style="color:black">Register</a></li>
						</ul>
					</div>
				</div>
			</nav>     
    </div>
    
</div>
</body>
</html>