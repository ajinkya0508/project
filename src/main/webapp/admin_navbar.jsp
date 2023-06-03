<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a style="background-color: #104E8B;"  class="navbar-brand" href="index.jsp"><image alt=""
				src="image/tourLogo.jpg" width="50px" height="50px"> Smart Trip Planner</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li style="background-color: #8B4726;" class="nav-item"><a class="nav-link active"
					href="index.jsp">HOME</a></li>
				
				<li style="background-color: #CD6839;" class="nav-item"><a class="nav-link active" href="users">USER</a></li>
				<li style="background-color: #8B4726;" class="nav-item"><a class="nav-link active"
					href="appointment">TRIP APPOINTMENTS</a></li>
					
					<li style="background-color: #CD6839;" class="nav-item"><a class="nav-link active"
					href="add_tripByAdmin.jsp">ADD TRIP BOOKING</a></li>
					
					<li style="background-color: #8B4726;" class="nav-item"><a class="nav-link active"
					href="appointments?mode=viewAddedTripsByAdmin">VIEW ADDED TRIP BOOKING BY ADMIN</a></li>

			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button style="background-color: #C1FFC1;" class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a style="background-color: #FFA07A;"  class="dropdown-item" href="adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>