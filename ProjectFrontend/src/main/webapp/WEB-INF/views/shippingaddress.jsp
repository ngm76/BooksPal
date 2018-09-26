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

<script type="text/javascript">
	$(document).ready(function() {
		$('#form').validate({
			rules : {
				"apartmentnumber" : {
					required : true
				},
				"streetname" : {
					required : true
				},
				"state" : {
					required : true
				},
				"city" : {
					required : true
				},
				"country" : {
					required : true
				},
				"zipcode" : {
					required : true,
					number : true
				}
			}
		})
	})
</script>

</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		

		<!-- Page Content  -->
		<div id="content">
			<div class="container">
				<div class="col-md-9" style="margin: 0 auto;">
					<div class="box" style="padding: 10px; opacity: 0.8">
						<div class="login-form"
							style="background-color: #000000; padding: 15px; color: #ffffff">
							<div class="form-group">
								<c:url var="url" value="/cart/createorder"></c:url>
								<form:form modelAttribute="shippingaddress" action="${url }"
									id="form">
									<h3 style="text-align: center">
										<b>Shipping Address</b>
									</h3>
									<tr>
										<td><br></td>
									</tr>
									<table>
										<tr>
											<td><form:label path="apartmentnumber">Enter Apartmentnumber</form:label></td>
											<td><form:input path="apartmentnumber"
													id="apartmentnumber" /></td>
										</tr>
										<tr>
											<td><form:label path="streetname">Enter streetname</form:label></td>
											<td><form:input path="streetname"
													id="streetname" /></td>
										</tr>
										<tr>
											<td><form:label path="city">Enter city</form:label></td>
											<td><form:input path="city"
													id="city" /></td>
										</tr>
										<tr>
											<td><form:label path="state">Enter state</form:label></td>
											<td><form:input path="state"
													id="state" /></td>
										</tr>
										<tr>
											<td><form:label path="country">Enter country</form:label></td>
											<td><form:input path="country"
													id="country" /></td>
										</tr>
										<tr>
											<td><form:label path="zipcode">Enter zipcode</form:label></td>
											<td><form:input path="zipcode"
													id="zipcode" /></td>
										</tr>

										<tr>
											<td><button type="submit" 
												style="background-color: #800000; color: #ffffff">Next</button></td>
										</tr>
									</table>
								</form:form>
							</div>
						</div>
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