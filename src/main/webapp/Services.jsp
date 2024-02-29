<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
</head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/styles.css" />
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

    <link rel="icon" href="assets/edit (1).png" type="image/x-icon">   
     <link rel="stylesheet" href="css/styles.css" />

  <title>Services</title>
  <style>
    /* google fonts link */

@import url("https://fonts.googleapis.com/css2?family=Nunito&display=swap");

* {
  margin: 0px;
  padding: 0px;
  box-sizing:border-box;
  font-family: "Poppins", sans-serif;
}

.theme-text {
  color: #e35252;
}

.container {
  position: relative;
    max-width: 81rem;
    width: 100%;
    margin: 0 auto;
    padding: 0 3rem;
    z-index: 10;

}

header {
  position: relative;
  z-index: 70;
}

header .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.overlay {
  display: none;
}

.logo {
  display: flex;
  align-items: center;
  cursor: pointer;
}

.logo img {
  width: 40px;
  margin-right: 0.6rem;
  margin-top: -0.6rem;
}

.logo h3 {
  color: #45424b;
  font-size: 1.55rem;
  line-height: 1.2;
  font-weight: 700;
}

.links ul {
  display: flex;
  list-style: none;
  align-items: center;
}

.links a {
  color: #aaa;
  margin-left: 4.5rem;
  display: inline-block;
  transition: 0.3s;
  text-decoration: none;
}

.links a:hover {
  color: #e35252;
  transform: scale(1.05);
}

.btn {
  display: inline-block;
  padding: 0.9rem 1.9rem;
  color: #fff !important;
  background-color: #e35252;
  border-radius: 16px;
  text-transform: capitalize;
  transition: 0.3s;
}

.btn:hover {
  background-color: #e35252;
  transform: scale(1) !important;
}

.hamburger-menu {
  position: relative;
  z-index: 99;
  width: 2rem;
  height: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  display: none;
}

.hamburger-menu .bar {
  position: relative;
  width: 100%;
  height: 3px;
  background-color: #45424b;
  border-radius: 3px;
  transition: 0.5s;
}

.bar::before,
.bar::after {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #45424b;
  border-radius: 3px;
  transition: 0.5s;
}

.bar::before {
  transform: translateY(-8px);
}

.bar::after {
  transform: translateY(8px);
}

.big-wrapper.active .hamburger-menu .bar {
  background-color: transparent;
}

.big-wrapper.active .bar::before {
  transform: translateY(0) rotate(-45deg);
}

.big-wrapper.active .bar::after {
  transform: translateY(0) rotate(45deg);
}

.showcase-area .container {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  align-items: center;
  justify-content: center;
}

.big-title {
  font-size: 1.4rem;
  color: #312f3a;
  text-transform: capitalize;
  line-height: 1.4;
}

.text {
  color: #919191;
  font-size: 1.1rem;
  margin: 1.9rem 0 2.5rem;
  max-width: 600px;
  line-height: 2.3;
}

.showcase-area .btn {
  box-shadow: 0 0 40px 2px rgba(0, 0, 0, 0.05);
}

.person {
  width: 123%;
  transform: translate(15%, 25px);
}

.shape {
  position: absolute;
  z-index: 0;
  width: 500px;
  bottom: -180px;
  left: -15px;
  opacity: 0.1;
}

.copy {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 100;
  animation: appear 1s 1 both;
}

@keyframes appear {
  0% {
    clip-path: circle(30% at -25% -25%);
  }
  100% {
    clip-path: circle(150% at 0 0);
  }
}

.row{
	display: flex;
	flex-wrap: wrap;
}
ul{
	list-style: none;
}
.footer{
	background-color: #24262b;
    padding: 70px 0;
}
.footer-col{
   width: 25%;
   padding: 0 15px;
}
.footer-col h4{
	font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
}
.footer-col h4::before{
	content: '';
	position: absolute;
	left:0;
	bottom: -10px;
	background-color: #e91e63;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}
.footer-col ul li:not(:last-child){
	margin-bottom: 10px;
}
.footer-col ul li a{
	font-size: 16px;
	text-transform: capitalize;
	color: #ffffff;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}
.footer-col ul li a:hover{
	color: #ffffff;
	padding-left: 8px;
}
.footer-col .social-links a{
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255,255,255,0.2);
	margin:0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
	color: #24262b;
	background-color: #ffffff;
}

/*responsive*/
@media(max-width: 767px){
  .footer-col{
    width: 50%;
    margin-bottom: 30px;
}
}
@media(max-width: 574px){
  .footer-col{
    width: 100%;
}
}


.card-img-top {
  height: 200px;
  width: 100%;
}
.card {
  z-index: 1;
  overflow: hidden;
  transition: 0.5s;
  border-radius: 5%;
}
.card:hover {
  color: white;
}

.card::before {
  content: "";
  position: absolute;
  left: -100%;
  top: 0%;
  background: #e35252;
  width: 100%;
  height: 100%;
  transition: 0.5s;
  z-index: -1;
}
.card:hover::before {
  left: 0%;
  color: white;
}
.container-fluid {
  background-image: url("blob-scene-haikei.svg");
  background-position: center;
  background-size: cover;
}


/*responsive*/
@media(max-width: 767px){
  .footer-col{
    width: 50%;
    margin-bottom: 30px;
}
}
@media(max-width: 574px){
  .footer-col{
    width: 100%;
}
}
  </style>
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

      <div class="container-fluid">
        <h1 class="text-center mt-5 display-3 fw-bold">Our <span class="theme-text">Services</span></h1>
        <hr class="mx-auto mb-5 w-25">
        <div class="row mb-5">
          <div class="col-12 col-sm-6 col-md-3 m-auto">
            <!-- card starts here -->
            <div class="card shadow">
              <img src="assets/pexels-dana-tentis-356289.jpg" alt="" class="card-img-top">
              <div class="card-body">
                <h3 class="text-center">Bike Rent</h3>
                <hr class="mx-auto w-75">
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                  nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                </p>
              </div>
            </div>
            <!-- card ends here -->
          </div>
          <!-- col ends here -->
          <div class="col-12 col-sm-6 col-md-3 m-auto">
            <!-- card starts here -->
            <div class="card shadow">
              <img src="assets/pexels-nicola-vidali-9768277.jpg" alt="" class="card-img-top">
              <div class="card-body">
                <h3 class="text-center">Scooter Rent</h3>
                <hr class="mx-auto w-75">
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                  nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                </p>
              </div>
            </div>
            <!-- card ends here -->
          </div>
          <!-- col ends here -->
          <div class="col-12 col-sm-6 col-md-3 m-auto">
            <!-- card starts here -->
            <div class="card shadow">
              <img src="assets/2.jpg" alt="" class="card-img-top">
              <div class="card-body">
                <h3 class="text-center">Group Ride Discounts</h3>
                <hr class="mx-auto w-75">
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                  nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                </p>
              </div>
            </div>
            <!-- card ends here -->
          </div>
          <!-- col ends here -->
          
          <!-- <div class="col-12 col-sm-6 col-md-3 m-auto"> -->
            <!-- card starts here -->
            <!-- <div class="card shadow">
              <img src="images/seo.svg" alt="" class="card-img-top">
              <div class="card-body">
                <h3 class="text-center">Email Marketing</h3>
                <hr class="mx-auto w-75">
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                  nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                </p>
              </div>
            </div> -->
            <!-- card ends here -->
          </div>
          <!-- col ends here -->
        </div>
      </div>
      <div class="bottom-area">
        <div class="container">

          <!-- Option 1: Bootstrap Bundle with Popper -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
        </div>
      </div>
    </div>
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
            <!-- <li><a href="#">shipping</a></li>
            <li><a href="#">returns</a></li> -->
            <li><a href="#">order status</a></li>
            <li><a href="#">payment options</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>follow us</h4>
          <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>
      </div>
    </div>
   </footer>
</body>

</html>