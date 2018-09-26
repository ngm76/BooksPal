<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
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
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper"style="font-family:Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Page Content  -->
		<div id="content">
			<div class="box" style="width: 40%; margin: 5% auto; padding: 10px ;opacity: 0.8">
				<div class="login-form"
					style="background-color: #000000; padding: 15px">
					<c:url value="/j_spring_security_check" var="url"></c:url>
					<form action="${url}" method="POST">
						<h3 class="text-center" style="color: #ffffff; padding: 10px">Log
							in</h3>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username"
								required="required" name="j_username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control"
								placeholder="Password" required="required" name="j_password">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block"
								style="background-color: #800000">Log in</button>
						</div>

					</form>
					<p class="text-center">
						<a href="<c:url value='/all/register'></c:url>">New User?</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.JS -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>

</body>
</html>