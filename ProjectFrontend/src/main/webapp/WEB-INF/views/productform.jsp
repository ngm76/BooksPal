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

			<div class="container">
				<div class="box"
					style="width: 60%; margin: 5% auto; padding: 10px; opacity: 0.8">
					<div class="login-form"
						style="background-color: #000000; padding: 15px; color: #ffffff">
						<div class="form-group">

							<c:url value="/admin/addproduct" var="url"></c:url>
							<form:form modelAttribute="product" action="${url}" method="post"
								enctype="multipart/form-data">

								<table>
									<tr>
										<td><form:hidden path="id"></form:hidden></td>
									</tr>


									<tr>
										<td><form:label path="productname">Enter Productname</form:label></td>
										<td><form:input path="productname" id="productname" /> <form:errors
												path="productname" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td><form:label path="productdesc">Enter Product Description</form:label></td>
										<td><form:textarea path="productdesc" id="productdesc" /> <form:errors
												path="productdesc" cssStyle="color:red">
											</form:errors></td>
									</tr>

									<tr>
										<td><form:label path="price">Enter Price</form:label></td>
										<td><form:input path="price" id="price" /> <form:errors
												path="price" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td><form:label path="quantity">Enter Quantity</form:label></td>
										<td><form:input path="quantity" id="quantity" /></td>
									</tr>

									<tr>
										<td><form:label path="category.cid">Select Category</form:label></td>
										<td><form:select path="category.cid">
												<!-- FK column value -->
												<!-- value is to set the value for the path category.id -->
												<c:forEach items="${categories }" var="c">
													<form:option value="${c.cid }">${c.cname }</form:option>
												</c:forEach>
											</form:select></td>
									</tr>


									<tr>
										<td><form:label path="image">Select Image</form:label></td>
										<td><form:input path="image" type="file" /></td>
									</tr>

									<tr>
										<td><input type="submit" value="Add Product"
											class="center btn btn-primary btn-block"
											style="background-color: #800000" /></td>
									</tr>

								</table>
							</form:form>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- jQuery CDN - Slim version (=without AJAX) -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<!-- Popper.JS -->
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