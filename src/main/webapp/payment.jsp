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
	background-image: url("image/bill.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.left {
	float: left;
}

.right {
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
					<div class="card-body" style="background-color: #ADD8E6;">

						<p  style="background-color: #FFE4E1;"class="text-center fs-3">Make Payment</p>

                      
                      
					 	 <form action="appointments?mode=makePayment" method="post"> 
						
							<div class='left'>
                                
								<label class="form-label">Credit Card Number</label> <input
									required name="card_no" type="text" class="form-control">


								<label class="form-label">Credit Card Type</label> <select
									name="creditCard" id="creditCard" class="form-control">
									<option value="Travel credit cards">Travel credit cards</option>
									<option value="Business credit cards">Business credit cards</option>
									<option value="Student credit cards">Student credit cards</option>
									<option value="Secured credit cards">Secured credit cards</option>
									<option value="Cashback credit cards">Cashback credit cards</option>
									
									

								</select> <label class="form-label">CVV No</label> <input required
									name="cvv" type="text" class="form-control">
									
									
									 <label class="form-label">Total Ammount Paid</label> <input 
									name="ammount"  value="${tripDeatil.ammount}" class="form-control" readonly>
							</div>
							

							<div class='right'>

								<label class="form-label">Name on Credit card</label> <input
									required name="NameOnCard" type="text" class="form-control">
									
									<br>
                              
                              

                                   <label for="inputEmail4" class="form-label">Expiry Date
								</label> <input type="date" class="form-control" required
									name="expiry">

                           
							</div>
                          
                             </div>
                             </div>
                            
                             <br>
							<button type="submit"
								class="col-md-4 offset-md-2 btn btn-success" type="submit">Payment</button>
                            
<%--                             <a class="fcc-btn" href="appointments?mode=updateStatus&id=${appoinmentDetails.apId}">Payment</a>   --%>
                              
			
							<button>
								<a style="background-color: #FF6A6A;" href="payment.jsp"> Reset Page </a>
							</button>
							  
							
						</form>
						  
					</div>
  
				</div>

			</div>
			</div>
			
			  
</body>
</html>