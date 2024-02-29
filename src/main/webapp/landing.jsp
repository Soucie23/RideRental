<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Rentide</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="icon" href="./assets/edit (1).png" type="image/x-icon">
<link rel="stylesheet" href="css/styles.css" />
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
			</header>

			<div class="showcase-area">
				<div class="container">
					<div class="left">
						<div class="big-title">
							<h1>Your Journey,</h1>
							<h1>Our Wheels:</h1>
							<h1>Ride with Confidence!</h1>
						</div>
						<p class="text">Find the perfect ride for your next adventure.
							Say goodbye to the hassle of ownership and hello to the freedom
							of renting with us.</p>
						<div class="cta">
							<a href="Login" class="btn">Get started</a>
						</div>
					</div>

					<div class="right">
						<img src="./assets/motor.png" alt="Bike Image" class="person" />
					</div>
				</div>
			</div>

			<div class="bottom-area">
				<div class="container"></div>
			</div>
		</div>
	</main>
	
    <!--Bikes-->
    <section class="trip">
      <div class="section__container trip__container">
        <h2 class="section__title">Bikes & Scooters</h2>
        <p class="section__subtitle">
          Explore Freely, Rent a Bike or Scooter Today!
        </p>
        <div class="trip__grid">

          <div class="trip__card">
            <img src="assets/honda dio 125.png" alt="trip" />
            <div class="trip__details">
              <p>Honda Dio 125</p>
              <div class="rating"><i class="ri-star-fill"></i> 4.2</div>
              <div class="booking__price">
                <div class="price"><span>From</span> $300</div>
                <a href="Login">
                  <button class="book__now">Book Now</button>
                </a>              </div>
            </div>
          </div>

          <div class="trip__card">
            <img src="assets/yamaha.png" alt="trip" />
            <div class="trip__details">
              <p>Yamaha FZ-S</p>
              <div class="rating"><i class="ri-star-fill"></i> 4.2</div>
              <div class="booking__price">
                <div class="price"><span>From</span> $300</div>
                <a href="Login">
                  <button class="book__now">Book Now</button>
                </a>              </div>
            </div>
          </div>

           <div class="trip__card">
            <img src="assets/ktm.png" alt="trip" />
            <div class="trip__details">
              <p>KTM 390</p>
              <div class="rating"><i class="ri-star-fill"></i> 4.7</div>
              <div class="booking__price">
                <div class="price"><span>From</span> $400</div>
                <a href="Login">
                  <button class="book__now">Book Now</button>
                </a>              </div>
            </div>
          </div>

        </div>
        <div class="view__all">
          <a href="View">
            <button class="btn">
              View All</button>
          </a>
        </div>
      </div>
    </section>

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
						<!-- <li><a href="#">shipping</a></li>
              <li><a href="#">returns</a></li> -->
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<!-- <h4>online shop</h4> -->
					<!-- <ul>
              <li><a href="#">watch</a></li>
              <li><a href="#">bag</a></li>
              <li><a href="#">shoes</a></li>
              <li><a href="#">dress</a></li>
            </ul> -->
				</div>
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

	<!-- JavaScript Files -->

	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<script src="/js/index.js"></script>
</body>
</html>