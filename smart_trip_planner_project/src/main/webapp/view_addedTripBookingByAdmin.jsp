<%@page import="com.dao.UserDao"%>
<%@page import="com.entity.User"%>


<%@page import="com.entity.Appointment"%>
<%@page import="com.dto.AppointmentInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnection"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}


body {
	background-image: url("image/trip3.jpg");
	background-size: cover;
}

</style>
</head>
<body>

	<%@include file="admin_navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body" style="background-color: #EED2EE;" >
						<p style="background-color: yellow;"  class="fs-4 fw-bold text-center text-success">View added Trips Booking By Admin List</p>
						<table class="table">
							<thead>
								<tr>
									
									
									<th scope="col">Departure</th>
									<th scope="col">Destination</th>
									<th scope="col">Start Date</th>
									<th scope="col">Start Time</th>
									<th scope="col">End Date</th>
								    <th scope="col">End Time</th>
								    <th scope="col">Price</th>
								    <th scope="col">Vehicle</th>
									<th scope="col">Remove</th>
									
									
								</tr>
							</thead>
								
							<c:forEach items="${appointments}" var="ap">
								<tr>
									
								
									<td>  ${ap.departure}</td>
									<td>  ${ap.destination}</td>
									<td>  ${ap.startDate}</td>
									<td>  ${ap.startTime}</td>
									<td>  ${ap.endDate}</td>
									<td>  ${ap.endTime}</td>
									<td>  ${ap.price}</td>
									<td>  ${ap.vehicle}</td>
									
						
									<td>
										<button style="background-color: red;">
											<a
												href="appointments?mode=removeAppointment&id=${ap.apId}"
												class="button">Remove</a>
										</button>
									</td>
										
								</tr>
							</c:forEach>
						</table>

					</div>
				</div>
			</div>
			
		</div>
	</div>


<style>

.transparent-div {
  background-color: rgba(255, 255, 255, 0.5); /* Set the background color to white with 50% opacity */
}
</style>

</body>

</html>

