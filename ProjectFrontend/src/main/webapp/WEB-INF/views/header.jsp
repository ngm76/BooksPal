<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.css">


</head>
<body style="color: #000000; font-family: Helvetica !important;">

	<nav id="sidebar" style="opacity: 0.9">
		<div class="sidebar-header">
			<h3>BooksPal</h3>
		</div>
		<hr>
		<ul class="list-unstyled components">

			<li class="active"><a href="<c:url value='/index'></c:url>">Home</a>
			<li><a href="#productSubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle"> Products</a>
				<ul class="collapse list-unstyled" id="productSubmenu">

					<li><a href="<c:url value='/all/getallproducts'></c:url>">
							Browse All Products</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">

						<li><a href="<c:url value='/admin/getproductform'></c:url>">
								Add Product</a></li>
					</security:authorize>
				</ul></li>


			<li><a href="#categorySubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle"> Category<span
					class="caret"></span></a>
				<ul class="collapse list-unstyled" id="categorySubmenu">
					<security:authorize
						access="hasRole('IS_AUTHENTICATED_ANONYMOUSLY')">
						<c:forEach items="${categories}" var="c">
							<li><a
								href="<c:url value='/all/searchByCategory?searchCondition=${c.cname}'></c:url>">${c.cname}</a></li>
						</c:forEach>

						<li><a
							href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
						</li>

					</security:authorize>

					<security:authorize access="hasRole('ROLE_ADMIN')">

						<li><a href="<c:url value='/admin/getallcategories'></c:url>">Show
								all Categories</a></li>
						<li><a href="<c:url value='/admin/getcategoryform'></c:url>">Add
								Category</a></li>


					</security:authorize>
				</ul></li>


			<li><a href="<c:url value='/aboutus'></c:url>">AboutUs</a></li>


			<li><a href="<c:url value='/contact'></c:url>">Contact</a></li>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value='/all/register'></c:url>">Register</a></li>
				<li><a href="<c:url value='/login'></c:url>">Login</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value='/cart/getcart'></c:url>"><span
							class="fa fa-shopping-cart"></span></a></li>
				</security:authorize>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">Sign
						out</a></li>
			</c:if>

		</ul>

	</nav>

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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script type="text/javascript" charset="utf8"
		src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
	<script
		src="https://cdn.datatables.net/plug-ins/1.10.15/api/row().show().js"></script>


</body>
</html>