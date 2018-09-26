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
			
				<div class="box"
					style="width: 60%; margin: 5% auto; padding: 10px; opacity: 0.8">
					<div class="login-form"
						style="background-color: #000000; padding: 15px; color: #ffffff">
						<h1>Edit Category</h1>
						<!-- product = new Product(), initially all the properties will have default values -->

						<c:url value="/admin/updatecategory" var="url"></c:url>
						<form:form modelAttribute="category" action="${url}" method="POST">
							<table>
								<tr>
									<td></td>
									<!-- user need not to give the values for id , as it is auto- generated  -->
									<td><form:hidden path="cid"></form:hidden></td>
								</tr>

								<tr>
									<td>Enter Category Name</td>
									<td><form:input path="cname"></form:input></td>
								</tr>

								<tr>
									<td>Enter Category Description</td>
									<td><form:textarea path="cdesc"></form:textarea></td>
								</tr>
								<tr>
									<td><input type="submit" value="Edit Category"
										class="center btn btn-primary btn-block"
										style="background-color: #800000" /></td>
								</tr>

							</table>

						</form:form>

						<hr>
					</div>
				</div>
			</div>
		</div>




</body>
</html>