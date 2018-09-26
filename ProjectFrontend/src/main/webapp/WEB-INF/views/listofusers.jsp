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

<meta charset="utf-8">


<title>Books Pal</title>


</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->

			<div class="container"
				style="color: #ffffff !important; font-family: Helvetica">

				<div class="col-md-12">
					<div class="table-responsive">
						<table id="example" class="table  table-striped "
							style="opacity: 0.8" data-toggle="table" data-search="true">
							<thead style="background-color: #000000; color: #ffffff; font-family: Helvetica !important; font-weight: normal !important">
								<tr>
									<th>User Name</th>
									<th>email</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody style="background-color: #E0D1BE; color: #000000">
								<!-- For each object in the list, tr has to be repeated -->
								<!--  items refers to the collection of objects -->
								<!-- var is local variable ,takes objects one by one from the collection -->

								<c:forEach var="u" items="${userslist}">
									<tr>
										<td>${email}</td>

										<td>${password}</td>

										<td>${enabled}</td>

										<td><a
											href="<c:url value='/deleteuser/${u.email}'></c:url>"><span
												class="fa fa-trash"></span></a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>