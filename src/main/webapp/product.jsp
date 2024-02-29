<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
<link rel="stylesheet" href="./css/styles.css" />
<link rel="stylesheet" href="./css/product.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />


</head>
<body>
	<main>
		<div class="big-wrapper light">
			<img src="./img/shape.png" alt="" class="shape" />

			<header>
				<div class="container">
					<div class="logo">
						<img src="./assets/edit (1).png" alt="Logo" />
						<h3>Ride Rental Services</h3>
					</div>

					<div class="links">
						<ul>
							<li><a href="Landing">Home</a></li>
							<li><a href="Services">Services</a></li>
							<li><a href="View">Bikes & Pricing</a></li>
							<li><a href="Test">Testimonials</a></li>
							<li><a href="Login" class="btn">Login</a></li>
						</ul>
					</div>

					<div class="overlay"></div>
					<div class="hamburger-menu">
						<div class="bar"></div>
					</div>
				</div>

				<!-- -Product Details -->
				<section class="product-details">
					<div class="container">
						<div class="product-image">
							<img src="./assets/motor.png" alt="Product Image">
						</div>
						<div class="product-info">
							<h2>Product Name</h2>
							<p class="price">$ [Product Price]</p>
							<p>**Description:** [Product Description]</p>
							<ul class="features">
								<li>**Feature 1:** [Feature Description]</li>
								<li>**Feature 2:** [Feature Description]</li>
								<li>**Feature 3:** [Feature Description]</li>
							</ul>
							<div class="add-to-cart">
								<button>Rent Now</button>
							</div>
						</div>
					</div>
				</section>


				<!-- Product details end -->
	</main>
	<!--footer-->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>company</h4>
					<ul>
						<li><a href="#">about us</a></li>
						<li><a href="#">our services</a></li>
						<li><a href="#">privacy policy</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>get help</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>
				<div class="footer-col"></div>
				<div class="footer-col">
					<h4>follow us</h4>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-instagram"></i></a> <a href="#"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>


</body>
</html>