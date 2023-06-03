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
<title>Add Trip Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}


</style>
</head>

<body style="background-repeat: no-repeat; background-size: 100% 130%; background-image:url(image/banner1.jpg)">

<body style="background-color:powderblue;">
	<%@include file="component/navbar.jsp"%>
	

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	<div class="container p-3">
			<div class="row">
			<!-- 			<div class="col-md-6 p-5"> -->
			
			<!-- 			</div> -->

			<div class="col-md-10">
				<div class="card paint-card">
					<div class="card-body" style="background-color: #87CEFF;">
					<h1 style="background-color: yellow;" >SET YOUR DESTINATION & ACCOMMODATION</h1>
						<p style="background-color: #DDA0DD;" class="text-center fs-3">set where you want go and your accommodation</p>

						<form action="appointments?mode=searchAppointment" method="post">
						
							<div class="col-md-12">
								<div class="col-md-12">
									<label for="inputPassword4" class="form-label">Select
										Departure</label> <select class="form-control" id="departure" name="departure">
										
									<option value="Delhi">Delhi</option>
									<option value="Agra">Agra</option>
									<option value="Chennai">Chennai</option>
									<option value="Pune">Pune</option>
									
								</select>	</select>
								
								<br>
								
								<div class="col-md-12">
									<label for="inputPassword4" class="form-label">Select
										Destination</label> <select class="form-control" id="destination" name="destination">
										
									<option value="Mumbai">Mumbai</option>
									<option value="Hariyana">Hariyana</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Chennai">Chennai</option>
									<option value="Shirdi">Shirdi</option>
									
									
									
								</select> </select>
									</select>
								
								<br>
									<div class="col-md-4">
										<label for="inputEmail4" class="form-label">Select
											Start Date</label> <input type="date" class="form-control" required
											name="startDate">
									</div>
									
									<br>
									
				
									<div class="col-md-4">
										<label for="inputEmail4" class="form-label">Select End
											Date</label> <input type="date" class="form-control" required
											name="endDate">
									</div>

								<br>
								<br>
								<center>	<button type="submit"
									class="btn bg-success text-white col-md-4" style="width: 200px; height: 50px;">SUBMIT</button></center>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@include file="component/footer.jsp"%>

</body>
</html>