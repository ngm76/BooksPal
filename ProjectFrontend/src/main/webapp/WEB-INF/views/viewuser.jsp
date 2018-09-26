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
				
				<div class="col-sm-9">

					<div class="box" id="details" style="width: 100%;">
						<p>
						<h4>User details</h4>
						<p></p>
						<h4>User Name</h4>
						<ul>
							<li>${userobj.username}</li>

						</ul>
						<h4>Email</h4>
						<ul>
							<li>${userobj.email}</li>

						</ul>

						<h4>Phone Number</h4>
						<ul>
							<li>${userobj.phonenumber}</li>

						</ul>

						
						<hr>

						

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>