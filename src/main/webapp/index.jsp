<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>


</head>
<body>
	<%@include file="component/navbar.jsp"%>



	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<image src="image/trip3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<image src="image/night.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<image src="image/taju.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div style="background-color: #FFE4E1;" class="container p-3">
		<p style="background-color: yellow;" class="text-center fs-2 ">Key Features of our Automated Tour Planner</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card bg-primary text-white">
							<div class="card-body">100% Safety</div>
						</div>
						<div class="card paint-card">
							<div class="card bg-success text-white">
								<p class="fs-5"></p>
								<p>1.)Safety is a top priority for our tour planner, and we
									take every measure to ensure our customers are protected while
									traveling.2)Our safety measures include regularly inspecting
									equipment and vehicles, providing trained guides, and following
									established safety guidelines.3)We also prioritize
									communication with our customers to ensure they are informed
									and prepared for any potential risks associated</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card bg-warning text-dark">
							<div class="card-body">Clean and Well-maintained Vehicles</div>
						</div>
						<div class="card paint-card">
							<div class="card bg-info text-white">
								<p class="fs-5"></p>
								<p>1.) At our tour planner, we understand the importance of
									providing clean and well-maintained vehicles for our
									customers.2)Our vehicles undergo regular cleaning and
									maintenance to ensure they are in top condition for every
									trip.3)We take pride in offering a comfortable and enjoyable
									travel experience, and clean vehicles are just one of the ways
									we achieve that service provider.</p>
							</div>
						</div>
					</div>


					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card bg-warning text-dark">
								<div class="card-body">Good Drivers</div>
							</div>
							<div class="card bg-danger text-white">
								<p class="fs-5"></p>
								<p>1)We believe that a good driver is essential to providing
									a safe and enjoyable travel experience for our customers.2)Our
									drivers are trained professionals with extensive experience in
									navigating the roads and terrains of our destinations.3)We
									carefully select and screen our drivers to ensure they meet our
									high standards for professionalism, expertise, and customer
									service.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card bg-primary text-white">
							<div class="card-body">Good Facilities</div>
						</div>
						<div class="card paint-card">
							<div class="card bg-secondary text-white">
								<p class="fs-5"></p>
								<p>1)Our tour planner is committed to providing high-quality
									facilities that meet the needs and expectations of our
									customers.2)We carefully select accommodations, restaurants,
									and other facilities based on factors such as safety,
									cleanliness, and customer reviews.3)Additionally, we work
									closely with our partners to ensure that our customers receive
									the best possible service .</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<image alt="" src="image/p1.jpg" width="400px" height="400px">
				<image alt="" src="image/p2.jpg" width="400px" height="400px">
			</div>




		</div>
	</div>

	<hr>

	<div style="background-color: #FFF0F5;" class="container p-2">
		<p style="background-color: yellow;"  class="text-center fs-2 ">Places</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card" style="background-color: #FFFACD;">
					<div class="card-body text-center">
						<image src="image/tajmahal.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Agra</p>
						<p class="fs-7">(The Land Of Taj)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card" style="background-color: #FFDEAD;">
					<div class="card-body text-center">
						<image src="image/gatway.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Mumbai</p>
						<p class="fs-7">(Gate Way Of India)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card" style="background-color: #FFFACD;">
					<div class="card-body text-center">
						<image src="image/Shimla.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Shimla</p>
						<p class="fs-7">(The Queen Of Northern Hills)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card" style="background-color: #FFDEAD;">
					<div class="card-body text-center">
						<image src="image/Varanasi.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Varanasi</p>
						<p class="fs-7">(The Spiritual Capital Of India)</p>
					</div>
				</div>
			</div>

		</div>

	</div>



	<%@include file="component/footer.jsp"%>

</body>
</html>