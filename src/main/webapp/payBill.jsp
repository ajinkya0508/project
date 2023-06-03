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
			background-image: url("image/pay.jpg");
			background-repeat: no-repeat;
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


</head>

<body style="background-color: powderblue;">
<%@include file="./component/navbar.jsp"%>

	


	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container">
		<div class="row">
		

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">

						<p class="text-center fs-3">Pay Your Bill</p>


						
						<form action="appointments?mode=paybill" method="post">
						<div class='left'>

                    
					<label class="form-label">Title</label> <select name="title"
								id="title" class="form-control">
								<option value="Trip Bill">Trip Bill</option>
							</select>
							
							
							
							<label class="form-label">Provider</label> <select name="provider"
								id="provider" class="form-control">
								<option value="Trip Planner">Trip Planner</option>
							</select>
							
						
								<label class="form-label">Email</label> <input required
									name="email" type="email" class="form-control">
							
                            
                            
								<label class="form-label">Total Ammount Paid</label> <input required
									name="ammount" type="text" class="form-control">
							</div>
						
							<div class='right'>
							
								<label class="form-label">Consumer No</label> <input required
									name="Consumer" type="text" class="form-control">	
							
                            <label class="form-label">Trip Bill</label> <select name="bill"
								id="bill" class="form-control">
								<option value="Trip bill">Trip Bill</option>
							</select>
							
							
								<label class="form-label">Mobile Number</label> <input required
									 name="telphone" pattern="[0-9]{10}" title="Ten digits code" value="${doctObj.mobNo}" class="form-control">
							
							
							 <label class="form-label">Payment Option</label> <select name="payment"
								id="payment" class="form-control">
								<option value="Cridit/Debit Card">Cridit/Debit Card</option>
								<option value="Cridit/Debit Card">Google Pay</option>
								<option value="Cridit/Debit Card">Phone Pay</option>
								
							</select>
							
							
							</div>
							
                           
							<button type="submit" class="col-md-4 offset-md-2 btn btn-success">Payment</button> 
                            
                        <button>
                          <a href="payBill.jsp"> Reset Page </a></button>
						
					</form>
					</div>
					
				</div>
			
			</div>


</body>
</html>