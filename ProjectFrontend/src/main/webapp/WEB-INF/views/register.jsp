<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

<link
	href="<c:url value='${pageContext.request.contextPath}/resources/css/registration.css'></c:url>"
	rel="stylesheet">



<script type="text/javascript">
	function fillShippingAddress(form) {
		if (form.shippingaddressform.checked == true) {
			//shippingaddress is same as billingaddress
			form["shippingaddress.apartmentnumber"].value = form["billingaddress.apartmentnumber"].value;
			form["shippingaddress.streetname"].value = form["billingaddress.streetname"].value;
			form["shippingaddress.city"].value = form["billingaddress.city"].value;
			form["shippingaddress.state"].value = form["billingaddress.state"].value;
			form["shippingaddress.country"].value = form["billingaddress.country"].value;
			form["shippingaddress.zipcode"].value = form["billingaddress.zipcode"].value;
		}
		if (form.shippingaddressform.checked == false) {
			form["shippingaddress.apartmentnumber"].value = ""
			form["shippingaddress.streetname"].value = ""
			form["shippingaddress.city"].value = ""
			form["shippingaddress.state"].value = ""
			form["shippingaddress.country"].value = ""
			form["shippingaddress.zipcode"].value = ""
		}
	}

	$(document).ready(function() {
		$('#form').validate({
			rules : {
				firstname : {
					required : true
				},
				lastname : {
					required : true
				},
				phonenumber : {
					required : true,
					number : true,
					minlength : 10,
					maxlength : 10
				},
				"user.email" : {
					required : true,
					email : true
				},
				"user.password" : {
					required : true,
					minlength : 5,
					maxlength : 10
				},
				"billingaddress.apartmentnumber" : {
					required : true
				},
				"billingaddress.streetname" : {
					required : true
				},
				"billingaddress.state" : {
					required : true
				},
				"billingaddress.city" : {
					required : true
				},
				"billingaddress.country" : {
					required : true
				},
				"billingaddress.zipcode" : {
					required : true,
					number : true
				}
			},
			messages : {
				firstname : {
					required : "Firstname is mandatory"
				},
				phonenumber : {
					required : "Phonenumber is required"
				},
				"user.email" : {
					required : "Email is required",
					email : "Please enter valid email address"
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
				<div class="col-md-6" style="margin: 0 auto;">
					<div class="box" style="padding: 10px; opacity: 0.8">
						<div class="login-form"
							style="background-color: #000000; padding: 15px; color: #ffffff">
							<div class="form-group">
								<c:url value="/all/registercustomer" var="url"></c:url>
								<form:form modelAttribute="customer" action="${url }" id="form">
									<h3 style="text-align: center">
										<b>Registration Form</b>
									</h3>
									<tr>
										<td><br></td>
									</tr>
									<table>
										<tr>
											<td><form:hidden path="id" /></td>
										</tr>
										<tr>
											<td><form:label path="firstname">Enter Firstname</form:label></td>
											<td><form:input path="firstname" id="firstname" /></td>
										</tr>
										<tr>
											<td><form:label path="lastname">Enter Lastname</form:label></td>
											<td><form:input path="lastname" id="lastname" /></td>
										</tr>
										<tr>
											<td><form:label path="phonenumber">Enter Phonenumber</form:label></td>
											<td><form:input path="phonenumber" id="phonenumber" /></td>
										</tr>

										<tr>
											<td><br></td>
										</tr>


										<tr>
											<td><h5>
													<b>Login Credentials</b>
												</h5></td>
										</tr>


										<tr>
											<td><br></td>
										</tr>

										<tr>
											<td><form:label path="user.email">Enter Email</form:label></td>
											<td><form:input path="user.email" id="user.email"
													type="email" required="required" />
										</tr>
										<tr>
											<td><form:label path="user.password">Enter password</form:label></td>
											<td><form:input path="user.password" id="user.password"
													type="password" required="required" /></td>
										</tr>


										<tr>
											<td><br></td>
										</tr>

										<tr>
											<td><h5>
													<b>Billing Address</b>
												</h5></td>
										</tr>
										<tr>
											<td><br></td>
										</tr>

										<tr>
											<td><form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label></td>
											<td><form:input path="billingaddress.apartmentnumber"
													id="billingaddress.apartmentnumber" /></td>
										</tr>
										<tr>
											<td><form:label path="billingaddress.streetname"> Enter streetname</form:label></td>
											<td><form:input path="billingaddress.streetname"
													id="billingaddress.streetname" /></td>
										</tr>
										<tr>
											<td><form:label path="billingaddress.city">Enter city</form:label></td>
											<td><form:input path="billingaddress.city"
													id="billingaddress.city" /></td>
										</tr>
										<tr>
											<td><form:label path="billingaddress.state">Enter state</form:label></td>
											<td><form:input path="billingaddress.state"
													id="billingaddress.state" /></td>
										</tr>
										<tr>
											<td><form:label path="billingaddress.country">Enter country</form:label></td>
											<td><form:input path="billingaddress.country"
													id="billingaddress.country" /></td>
										</tr>

										<tr>
											<td><form:label path="billingaddress.zipcode">Enter Zipcode</form:label></td>
											<td><form:input path="billingaddress.zipcode"
													id="billingaddress.zipcode" /></td>

										</tr>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td><h5>
													<b>Shipping address</b>
												</h5></td>
										</tr>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td><br> Check this if shipping address is same as
												billing address.</td>

											<td><input type="checkbox"
												onclick="fillShippingAddress(this.form)"
												id="shippingaddressform"></td>
										</tr>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label></td>
											<td><form:input path="shippingaddress.apartmentnumber"
													id="shippingaddress.apartmentnumber" /></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.streetname">Enter streetname</form:label></td>
											<td><form:input path="shippingaddress.streetname"
													id="shippingaddress.streetname" /></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.city">Enter city</form:label></td>
											<td><form:input path="shippingaddress.city"
													id="shippingaddress.city" /></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.state">Enter state</form:label></td>
											<td><form:input path="shippingaddress.state"
													id="shippingaddress.state" /></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.country">Enter country</form:label></td>
											<td><form:input path="shippingaddress.country"
													id="shippingaddress.country" /></td>
										</tr>
										<tr>
											<td><form:label path="shippingaddress.zipcode">Enter zipcode</form:label></td>
											<td><form:input path="shippingaddress.zipcode"
													id="shippingaddress.zipcode" /></td>
										</tr>

										<tr>
											<td><input type="submit" value="Register"
												style="background-color: #800000; color: #ffffff"></td>
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
