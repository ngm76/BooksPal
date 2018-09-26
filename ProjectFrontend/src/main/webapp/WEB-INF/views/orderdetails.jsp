<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->
			<div class="container-wrapper">
				<div class="container-fluid">


					<div class="row"
						style="padding:10px;background-color: #000000; opacity: 0.8;opacity: 0.9 !important; color: #ffffff; font-family: Helvetica; font-weight: normal !important;">


						<div
							class="col-md-12">

							<div>
								<h1 align="center">Invoice</h1>
							</div>
							ORDER ID: ${customerorder.orderId }

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<address>
										<strong>Shipping Address</strong><br />
										${customerorder.user.customer.shippingaddress.apartmentnumber },
										${customerorder.user.customer.shippingaddress.streetname } <br />
										${customerorder.user.customer.shippingaddress.state},
										${customerorder.user.customer.shippingaddress.city} <br />
										${customerorder.user.customer.shippingaddress.zipcode}
									</address>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6 text-right">
									<p>Shipping Date: ${customerorder.purchaseDate }</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<address>
										<strong>Billing Address</strong><br />
										${customerorder.user.customer.billingaddress.apartmentnumber},
										${customerorder.user.customer.billingaddress.streetname} <br />
										${customerorder.user.customer.billingaddress.city},
										${customerorder.user.customer.billingaddress.state} <br />
										${customerorder.user.customer.billingaddress.zipcode}
									</address>
								</div>
							</div>

							<div class="row">
								<table class="table table-hover" border="1">
									<thead>
										<tr>
											<td>Image</td>
											<td>Product</td>
											<td>Units</td>
											<td class="text-center">Price</td>
											<td class="text-center">Total</td>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="cartItem" items="${cartItems}">
											<tr>
												<c:url value='/resources/img/${cartItem.product.id}.png'
													var="imgUrl"></c:url>
												<td><img src="${imgUrl }" height="50px" width="50px">
												</td>
												<td class="col-md-9"><em>${cartItem.product.productname}</em></td>
												<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
												<td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
												<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>

											</tr>
										</c:forEach>

										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td class="text-right">
												<h4>
													<strong>Grand Total:</strong>
												</h4>
											</td>
											<td class="text-center text-danger">
												<h4>
													<strong>Rs. ${customerorder.grandTotal }</strong>
												</h4>
											</td>
										</tr>

									</tbody>
								</table>

							</div>

						</div>

					</div>

				</div>


			</div>
		</div>
	</div>


</body>
</html>