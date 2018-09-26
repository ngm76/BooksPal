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
</head>
<body
	style="background-image : url(${pageContext.request.contextPath}/resources/img/b5.jpg) ;">
	<div class="wrapper" style="font-family: Helvetica">
		<!-- Sidebar  -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<!-- Page Content  -->
			<div class="container"
				style="background-color: #000000; opacity: 0.8 ; color : #ffffff; ">
				<h3>Requested quantity of requested product is not
					available</h3>
				<a href="<c:url value='/cart/getcart'></c:url>">Click here to go
					to cart</a>

			</div>
		</div>
	</div>

</body>
</html>