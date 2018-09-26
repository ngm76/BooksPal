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
<body style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->
			<div class="container">
				<div class="box"
					style="width: 60%; margin: 5% auto; padding: 10px; opacity: 0.8">
					<div class="login-form"
						style="background-color: #000000; padding: 15px; color: #ffffff">
						<div class="form-group">

							<c:url value="/admin/addcategory" var="url"></c:url>
							<form:form modelAttribute="category" action="${url}" method="post">

								<table>
									<tr>
										<td><form:hidden path="cid"></form:hidden></td>
									</tr>


									<tr>
										<td><form:label path="cname">Enter Category Name</form:label></td>
										<td><form:input path="cname" id="cname" /> <form:errors
												path="cname" cssStyle="color:red"></form:errors></td>
									</tr>

									<tr>
										<td><form:label path="cdesc">Enter Category Description</form:label></td>
										<td><form:textarea path="cdesc" id="cdesc" /> <form:errors
												path="cdesc" cssStyle="color:red">
											</form:errors></td>
									</tr>

									<tr>
										<td><input type="submit" value="Add Category"
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
</div>

</body>
</html>