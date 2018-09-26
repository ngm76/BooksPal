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
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		var searchCondition = '${searchCondition}'
		$('#table').DataTable({
			"lengthMenu" : [ [ 5, 7, -1 ], [ 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
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
		<div id="content">
			<div class="container">
				<form class="navbar-form navbar-light bg-light" style="opacity: 0.7">

					<div class="input-group">
						<input type="text" name="keyword" placeholder="Search"
							class="form-control">
						<button class="btn btn-default" style="opacity: 1">
							<i class="fa fa-search"></i>
						</button>

					</div>

				</form>
			</div>

			<div class="container" id="table">
			
					<div class="row">

						<c:forEach var="p" items="${productslist}">
							<div class="col-md-3 "
								style="opacity: 0.9 !important; color: #ffffff; font-family: Helvetica; font-weight: normal !important;">
								<div class="card-group deck"
									style="margin: 5px auto; padding: 10px ; ">
									<div class="card text-center">
										<div>

											<p class="card title" style="color: #000000 ; ">${p.category.cname }</p>
											<p>
												<img
													src="<c:url value='/resources/img/${p.id }.png'></c:url>"
													height="75px" width="75px"></img>
											</p>
											<p class="card-text" style="color: #000000">${p.productname }</p>
											<p class="card-text" style="color: #000000">${p.price }</p>
											<p>
												<a href="<c:url value='/all/getproduct/${p.id}'></c:url>"><span
													class="fa fa-info" style="color: #A14E2E"></span></a>
												<security:authorize access="hasRole('ROLE_ADMIN')">
													<a
														href="<c:url value='/admin/deleteproduct/${p.id}'></c:url>"><span
														class="fa fa-trash" style="color: #A14E2E"></span></a>
													<a
														href="<c:url value='/admin/editproduct/${p.id}'></c:url>"><span
														class="fa fa-edit" style="color: #A14E2E"></span></a>
												</security:authorize>

											</p>

										</div>
									</div>
								</div>
							</div>


						</c:forEach>
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