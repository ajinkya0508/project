<%@page import="com.db.DbConnection"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.dao.AppointmentDAO"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

body{
background-image:url("image/tajmahal.jpg");
background-size:cover;}

</style>
</head>
<body>
	<%@include file="admin_navbar.jsp"%>

	<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
		<p style="background-color: yellow;" class="text-center fs-1">ADMIN DASHBOARD</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<%
		UserDao dao = new UserDao();
		AppointmentDAO dd=new AppointmentDAO();
		%>
			<div class="col-md-4">
				<div class="card paint-card" style="background-color: #EED2EE;">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
						  Total User <br> <a href="users"><%=dao.countUser()%></a>
						</p>
					</div>
				</div>
			</div>

<br>
			<div class="col-md-4">
				<div class="card paint-card"  style="background-color: #EED2EE;">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Tour Appointments <br><a href="appointment"> <%=dd.countAppointment()%></a>
						</p>
					</div>
				</div>
			</div>


</body>
</html>