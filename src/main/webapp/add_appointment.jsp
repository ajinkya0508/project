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
					<h1 style="background-color: yellow;" >SET YOUR TRIP JOURNEY</h1>
						<p style="background-color: #DDA0DD;" class="text-center fs-3">set where you want go </p>

						<form action="appointments?mode=searchAppointment" method="post">
						
							<div class="col-md-12">
								<div class="col-md-12">
									<label for="inputPassword4" class="form-label">Select
										Departure</label> <select class="form-control" id="departure" name="departure">
										
									
									<option value="Delhi">Delhi</option>
									<option value="Agra">Agra</option>
									<option value="Chennai">Chennai</option>
									<option value="Pune">Pune</option>
									<option value="Nagpur">Nagpur</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Ahmedabad">Ahmedabad</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Shegaon">Shegaon</option>
									<option value="Shirdi">Shirdi</option>
									<option value="Cochin">Cochin</option>
									<option value="Andaman">Andaman</option>
									<option value="Jammu">Jammu</option>
									<option value="Manali">Manali</option>
									<option value="solapur">solapur</option>
									<option value="Sangli">Sangli</option>
									<option value="Kolhapur">Kolhapur</option>
									<option value="Baramati">Baramati</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Panipat">Panipat</option>
									<option value="kutch">kutch</option>
									<option value="Wardha">Wardha</option>
									<option value="Amravati">Amravati</option>
									<option value="Srinagar">Srinagar</option>
									<option value="Shimla">Shimla</option>
									<option value="Ooty">Ooty</option>
									<option value="Mysore">Mysore</option>
									<option value="Ranchi">Ranchi</option>
									<option value="Sambhajinagar">Sambhajinagar</option>
									<option value="Ahmednagar">Ahmednagar</option>
									<option value="Lonavala">Lonavala</option>
									<option value="Panchgani">Panchgani</option>
									<option value="mahabaleshwar">mahableshwar</option>
									<option value="yavatmal">yavatmal</option>
									<option value="Satara">Satara</option>
									<option value="Islampur">Islampur</option>
									<option value="Jalgaon">Jalgaon</option>
									<option value="Jhansi">Jhansi</option>
									<option value="Assam">Assam</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Dwarka">Dwarka</option>
										<option value="Darjeeling">Darjeeling</option>
										<option value="Hooghly">Hooghly</option>
										<option value="Nadia">Nadia</option>
										<option value="Murshidabad">Murshidabad</option>
										<option value="Ganpatipule">Ganpatipule</option>
										<option value="Dapoli">Dapoli</option>
										<option value="Ratnagiri">Ratnagiri</option>
										<option value="Alibag">Alibag</option>
										<option value="Nashik">Nashik</option>
										<option value="Matheran">Matheran</option>
										<option value="Khandala">Khandala</option>
										<option value="Aurangabad">Aurangabad</option>
											<option value="Igatpuri">Igatpuri</option>
											<option value="Amboli">Amboli</option>
											<option value="Malvan">Malvan</option>
											<option value="Karjat">karjat</option>
											<option value="Rishikesh">Rishikesh</option>
											<option value="Katra">Katra</option>
											<option value="Mathura">Mathura</option>
											<option value="Vrindavan">Vrindavan</option>
											<option value="Kedarnath">Kedarnath</option>
											<option value="Bhopal">Bhopal</option>
											<option value="Udaipur">Udaipur</option>
											<option value="Prayagraj">Prayagraj</option>
											<option value="Bikaner">Bikaner</option>
											<option value="Munnar">Munnar</option>
											<option value="Kota">Kota</option>
											<option value="Vadodara">Vadodara</option>
											<option value="Rajkot">Rajkot</option>
											<option value="Patna">Patna</option>
											<option value="Ujjain">Ujjain</option>
											<option value="Karad">Karad</option>
											<option value="Nanded">Nanded</option>
											<option value="Gandhinagar">Gandhinagar</option>
											<option value="Vellore">Vellore</option>
											<option value="Mangalore">Mangalore</option>
											<option value="Dhule">Dhule</option>
									
								</select> </select>
								
								<br>
								
								<div class="col-md-12">
									<label for="inputPassword4" class="form-label">Select
										Destination</label> <select class="form-control" id="destination" name="destination">
										
									<option value="Mumbai">Mumbai</option>
									<option value="Ahmedabad">Ahmedabad</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Pune">Pune</option>
									<option value="Nagpur">Nagpur</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Delhi">Delhi</option>
									<option value="Chennai">Chennai</option>
									<option value="Agra">Agra</option>
									<option value="Shegaon">Shegaon</option>
									<option value="Shirdi">Shirdi</option>
									<option value="Cochin">Cochin</option>
									<option value="Andaman">Andaman</option>
									<option value="Jammu">Jammu</option>
									<option value="Manali">Manali</option>
									<option value="Solapur">Solapur</option>
									<option value="Sangli">Sangli</option>
									<option value="Kolhapur">Kolhapur</option>
									<option value="Baramati">Baramati</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Panipat">Panipat</option>
									<option value="kutch">kutch</option>
									<option value="Wardha">Wardha</option>
									<option value="Amravati">Amravati</option>
									<option value="Srinagar">Srinagar</option>
									<option value="Shimla">Shimla</option>
									<option value="Ooty">Ooty</option>
									<option value="Mysore">Mysore</option>
									<option value="Ranchi">Ranchi</option>
									<option value="Sambhajinagar">Sambhajinagar</option>
									<option value="Ahmednagar">Ahmednagar</option>
									<option value="Lonavala">Lonavala</option>
									<option value="Panchgani">Panchgani</option>
									<option value="Mahabaleshwar">Mahableshwar</option>
									<option value="Yavatmal">Yavatmal</option>
									<option value="Satara">Satara</option>
									<option value="Islampur">Islampur</option>
									<option value="Jalgaon">Jalgaon</option>
									<option value="Jhansi">Jhansi</option>
									<option value="Assam">Assam</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Dwarka">Dwarka</option>
										<option value="Darjeeling">Darjeeling</option>
										<option value="Hooghly">Hooghly</option>
										<option value="Nadia">Nadia</option>
										<option value="Murshidabad">Murshidabad</option>
										<option value="Ganpatipule">Ganpatipule</option>
										<option value="Dapoli">Dapoli</option>
										<option value="Ratnagiri">Ratnagiri</option>
										<option value="Alibag">Alibag</option>
										<option value="Nashik">Nashik</option>
										<option value="Matheran">Matheran</option>
										<option value="Khandala">Khandala</option>
										<option value="Aurangabad">Aurangabad</option>
											<option value="Igatpuri">Igatpuri</option>
											<option value="Amboli">Amboli</option>
											<option value="Malvan">Malvan</option>
											<option value="Karjat">karjat</option>
											<option value="Rishikesh">Rishikesh</option>
											<option value="Katra">Katra</option>
											<option value="Mathura">Mathura</option>
											<option value="Vrindavan">Vrindavan</option>
											<option value="Kedarnath">Kedarnath</option>
											<option value="Bhopal">Bhopal</option>
											<option value="Udaipur">Udaipur</option>
											<option value="Prayagraj">Prayagraj</option>
											<option value="Bikaner">Bikaner</option>
											<option value="Munnar">Munnar</option>
											<option value="Kota">Kota</option>
											<option value="Vadodara">Vadodara</option>
											<option value="Rajkot">Rajkot</option>
											<option value="Patna">Patna</option>
											<option value="Ujjain">Ujjain</option>
											<option value="Karad">Karad</option>
											<option value="Nanded">Nanded</option>
											<option value="Gandhinagar">Gandhinagar</option>
											<option value="Vellore">Vellore</option>
											<option value="Mangalore">Mangalore</option>
											<option value="Dhule">Dhule</option>
											
											
											
									
									
									
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