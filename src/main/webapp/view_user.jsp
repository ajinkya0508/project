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
<title>Patient Information</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}


</style>
</head>
<body style="background-repeat: no-repeat; background-size: 100% 150%; background-image:url(image/banner1.jpg)">
<body>

	<%@include file="component/navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body" style="background-color: #C1FFC1;">
						<p style="background-color: yellow;" class="fs-4 fw-bold text-center text-success">Appointment
							Information</p>



						 Name :- ${appoinmentDetails.userName} <br>
						<br> 
						 Age :-  ${appoinmentDetails.age} <br>
						<br> 
						 Gender :-  ${appoinmentDetails.gender} <br>
						<br> 
						
						 Address :-  ${appoinmentDetails.address} <br>
						<br> 
						 Email :-  ${appoinmentDetails.userEmail} <br>
						<br> 
						
						 Departure :-  ${appoinmentDetails.departure} <br>
						<br>
						 Destination :-  ${appoinmentDetails.destination} <br>
						<br>
						
						 Start Date:-  ${appoinmentDetails.startDate} <br>
						<br>
						
						 Start Time:-  ${appoinmentDetails.startTime} <br>
						<br>
						
						 End Date:-  ${appoinmentDetails.endDate} <br>
						<br>
						
						 End Time:-  ${appoinmentDetails.endTime} <br>
						<br>
						 Vehicle:-  ${appoinmentDetails.vehicle} <br>
						<br>
						 Payment:-  ${appoinmentDetails.payment} <br>
						<br>
						Click For :-
<!-- 						<a class="fcc-btn" href="medicine_index.jsp">Patient Medical receipt</a><br>   -->
						
 					<a style="background-color: #BC8F8F	;" class="fcc-btn" href="appointments?mode=updateBooking&id=${appoinmentDetails.apId}">Booking Accepted</a>  
 					
					</div>
				</div>
			</div>

			<div class="col-md-3 p-3">
				<img alt="" src="image/check2.jpg">
			</div>
		</div>
	</div>


</body>
</html>