<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a style="background-color: #104E8B;" class="navbar-brand" href="index.jsp"><image alt=""
				src="image/tourLogo.jpg" width="50px" height="50px"> Smart Trip Planner
			Planner</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
			

				<c:if test="${empty user }">


					<li style="background-color: #FF34B3;" class="nav-item"><a class="nav-link active"
						aria-current="page" href="about.jsp">About</a></li>
						
						
						
						<li style="background-color: #FF82AB;" class="nav-item"><a class="nav-link active"
						aria-current="page" href="service.jsp">Service</a></li>
						
						
			
						
					

					<li style="background-color: #FF34B3;" class="nav-item" ><a class="btn btn-danger"
						aria-current="page" href="admin_login.jsp"><i
							class="fas fa-sign-in-alt"></i> ADMIN</a></li>


					<li style="background-color: #FF82AB;" class="nav-item"><a class="btn btn-warning"
						aria-current="page" href="user_login.jsp"><i class=" fas
							fa-sign-in-alt"></i> USER
					</a></li>

				</c:if>

				<c:if test="${not empty user}">
					<li style="background-color: #8B3A3A;" class="nav-item"><a class="nav-link active"
						aria-current="page" href="add_appointment.jsp">ADD BOOKING</a></li>

					<li style="background-color: #CD5555;" class="nav-item"><a class="nav-link active"
						aria-current="page" href="appointments?mode=viewAppointments">VIEW BOOKING
							</a></li>

					<div class="dropdown">
						<button style="background-color: #FF8C69;" class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${user.fullname }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a style="background-color: #CDCD00;" class="dropdown-item" href="user_signup.jsp">User
									Update</a></li>

							<li><a style="background-color: #EE6363;" class="dropdown-item" href="userLogout">Logout</a></li>


						</ul>
					</div>
				</c:if>
				
			</ul>
		</div>
	</div>
</nav>