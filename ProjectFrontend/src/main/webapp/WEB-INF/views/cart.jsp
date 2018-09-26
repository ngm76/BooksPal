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
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->

			<div class="container"
				style="background-color: #000000; opacity: 0.8;">
				<div class="col-md-12" style="padding: 20px">
					<div class="box" id="details"
						style="padding-left: 40px; width: 100%; font-family: Helvetica; color: #ffffff">
						<c:if test="${ !empty(cartItems) }">
							<a href="<c:url value='/cart/clearcart'></c:url>"
								class="btn btn-danger" pull-left> <span
								class="glyphicon glypicon-remove"></span> Clear Cart
							</a>
						</c:if>
						<table class="table table-striped">
							<thead id="thead">
								<tr>
									<th>ProductName</th>
									<th>Quantity</th>
									<th>Total Price</th>
									<th>Remove</th>
								</tr>
							</thead>
							<c:set var="grandTotal" value="0"></c:set>
							<tbody id="tbody">
								<!-- cartItems is List<CartItem>, cartItem is CartItem obj -->
								<c:forEach items="${cartItems }" var="cartItem">
									<tr>
										<td>${cartItem.product.productname }</td>
										<td>${cartItem.quantity }</td>
										<td>${cartItem.totalPrice }</td>
										<c:set var="grandTotal"
											value="${grandTotal + cartItem.totalPrice }"></c:set>

										<td><a
											href="<c:url value='/cart/removecartitem/${cartItem.cartItemId }'></c:url>"
											class="btn btn-default" pull-left> <span
												class="glyphicon glyphicon-remove"></span>Remove
										</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						Total Price : ${grandTotal }
						<c:if test="${empty(cartItems) }">
							<h3>Your Cart is Empty</h3>
						</c:if>
						<c:if test="${ !empty(cartItems) }">
							<a href="<c:url value='/cart/shippingaddressform'></c:url>"
								class="btn btn-success pull-right"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Place Order
							</a>
						</c:if>
					</div>
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