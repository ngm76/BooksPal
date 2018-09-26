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
	<jsp:include
		page="header.jsp"></jsp:include>
	<div id="content">
		<div class="container"style="padding:40px;background-color: #000000; opacity: 0.8 ;  font-family: Helvetica; color: #ffffff">
			<h5><b>About us</b></h5>
			<p>This website contains various books that fit in the categories like Science Fiction , Biographies , Technology .
			We have made it easy to search products by their name as well as category.</p>
		</div>
	</div>
</div>
</body>
</html>