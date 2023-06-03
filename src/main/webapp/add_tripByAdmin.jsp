<%@page import="com.db.DbConnection"%>

<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Trip By Admin</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

body {
	background-image: url("image/trip3.jpg");
	background-size: cover;
}

.left
{
  float: left;
}

.right
{
  float: right;
}
</style>

</style>
</head>

<body style="background-color: powderblue;">
	<%@include file="admin_navbar.jsp"%>




	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container">
		<div class="row">
			<!-- 			<div class="col-md-6 p-5"> -->

			<!-- 			</div> -->

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body" style="background-color: #EED2EE;">

						<p style="background-color: yellow;"  class="text-center fs-3">ADD TRIP PLAN BY ADMIN</p>


						<form action="appointments?mode=addtripByAdmin" method="post">
						
						<div class='left'>

							
								<label for="inputEmail4" class="form-label">Select
									departure</label> <input type="text" class="form-control" required
									name="departure">
							
							<br>

							
								<label for="inputEmail4" class="form-label">Select
									destination</label> <input type="text" class="form-control" required
									name="destination">
							

							<br>
							
								<label for="inputEmail4" class="form-label">Select Start
									Date</label> <input type="date" class="form-control" required
									name="startDate">
							
							<br> 
							
								<label for="inputEmail4" class="form-label">Select Start
									Time</label> <input type="time" class="form-control" required
									name="startTime">
							
							<br>
							</div>
							
							<div class='right'>

							
								<label for="inputEmail4" class="form-label">Select End
									Date </label> <input type="date" class="form-control" required
									name="endDate">
							

							<br>
							
								<label for="inputEmail4" class="form-label">Select End
									Time</label> <input type="time" class="form-control" required
									name="endTime">
							
							<br>

							
								<label for="inputEmail4" class="form-label">Price</label> <input
									type="number" class="form-control" required name="price">
							

							<br>

							
								<label for="inputEmail4" class="form-label">Vehicle </label> <input
									type="text" class="form-control" required name="vehicle">
							
							
                            
							<br>
							
							<br>
							</div>
							<button class="col-md-4 offset-md-3 btn btn-success">SUBMIT</button>
						</form>
					</div>
					
				</div>
			</div>
		</div>

	</div>

</body>
</html>