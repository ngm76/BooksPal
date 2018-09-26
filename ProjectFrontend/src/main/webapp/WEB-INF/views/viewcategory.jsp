<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<div class="row" id="productMain">
				<div class="col-sm-3">
					<div id="mainImage">
						<img
							src="${pageContext.request.contextPath}/resources/img/kiterunner.jpg"
							alt="" class="img-responsive" style="width: 100%;">
					</div>

				</div>



				<div class="col-sm-9">

					<div class="box" id="details" style="width: 100%;">
						<p>
						<h4>Category details</h4>
						<p></p>
						<h4>Category Name</h4>
						<ul>
							<li>${categoryobj.categoryname}</li>

						</ul>
						<h4>Description</h4>
						<ul>
							<li>${categoryobj.catgeorydesc}</li>

						</ul>

					

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>