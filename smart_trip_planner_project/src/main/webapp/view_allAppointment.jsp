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
						<p style="background-color: yellow;" class="fs-4 fw-bold text-center text-success">All User Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									
									<th scope="col">User Name</th>
									<th scope="col">Departure</th>
									<th scope="col">Destination</th>
									<th scope="col">Start Date</th>
									<th scope="col">Start Time</th>
									<th scope="col">End Date</th>
									<th scope="col">End Time</th>
									<th scope="col">Payment</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
															
								</tr>
							</thead>
								
							<c:forEach items="${appointment}" var="ap">
								<tr>
									
									<td>  ${ap.userName}</td>
									<td>  ${ap.departure}</td>
									<td>  ${ap.destination}</td>
									<td>  ${ap.startDate}</td>
									<td>  ${ap.startTime}</td>
									<td>  ${ap.endDate}</td>
									<td>  ${ap.endTime}</td>
									<td>  ${ap.payment}</td>
									<td>  ${ap.status}</td>
									
									<td>
										<button style="background-color: #9AFF9A;">
											<a
												href="appointments?mode=viewAppointmentDetails&id=${ap.apId}"
												class="button">View</a>
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


</body>
</html>