<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

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
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		
		<div id="content">
			<div class="container"
				style="background-color: #000000; opacity: 0.8;">
				<div class="col-md-12" style="padding: 20px">
					<c:url value='/cart/addtocart/${productobj.id}' var="url"></c:url>
					<form action="${url }">
						<div class="row" id="productMain">

							<div class="col-sm-3">
								<br> <br>
								<div id="mainImage">
									<img
										src="<c:url value='/resources/img/${productobj.id}.png'></c:url>"
										alt="image" class="img-responsive" style="width: 100%;">
								</div>

							</div>



							<div class="col-sm-9">
								<br>
								<div class="box" id="details"
									style="padding-left: 40px; width: 100%; font-family: Helvetica; color: #ffffff">
									<p>
									<h4>Product details</h4>
									<br>
									<h5>Book Name</h5>
									<ul>
										<li>${productobj.productname}</li>

									</ul>
									<h5>Category</h5>
									<ul>
										<li>${productobj.category.cname}</li>

									</ul>
									<h5>Description</h5>
									<ul>
										<li>${productobj.productdesc}</li>

									</ul>

									<h5>Quantity</h5>
									<ul>
										<li>${productobj.quantity}</li>

									</ul>

									<h5>Price</h5>
									<ul>
										<li>${productobj.price}</li>

									</ul>
									<c:if test="${productobj.quantity==0 }">
										<p class="text-center buttons" style="margin: 0 auto">
											<button class="btn btn-primary" disabled
												style="background-color: #800000">Out Of Stock</button>
										</p>
									</c:if>
									<c:if test="${productobj.quantity > 0 }">
										<security:authorize access="hasRole('ROLE_USER')">
											<h5>Enter Quantity</h5>
											<ul>
												<li><input type="number" name="requestedQuantity"></li>
											</ul>
											<hr>

										</security:authorize>
									</c:if>

								</div>
							</div>
							<security:authorize access="hasRole('ROLE_USER')">
								<p class="text-center buttons" style="margin: 0 auto">
									<button class="btn btn-primary"
										style="background-color: #800000">Add to cart</button>
								</p>
							</security:authorize>
						</div>
					</form>
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