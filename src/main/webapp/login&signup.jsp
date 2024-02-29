
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/login.css" />
<link rel="icon" type="image/x-icon" href="/assets/favicon.ico">
<title>Rentide</title>

</head>

<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
			<input type="hidden" id="status" value="<%=request.getAttribute("status") %>"/>

				<!-- Login Page Form -->
				<form action="Login" method="post" class="sign-in-form">
					<img src="./assets/edit (1).png" alt="logo">
					<p>Rentide</p>
					<h2 class="title">Log in</h2>
							<div class="input-field">
						<i class="fas fa-envelope"></i> 
						<input type="email" name="email" id="email"
							placeholder="Email" required />
					</div>

					<div class="input-field">
						<i class="fas fa-lock"></i> 
						<input type="password" name="password" id="togglePassword"
							placeholder="Password" id="passwordInput" required /> <i
							class="fas fa-eye" ></i>


						<div class="forgot-password-container">

							<a href="ForgotPassword" class="forgot-password"
								id="forgotPasswordLink">Forgot Password?</a>
						</div>
					</div>

					<input type="submit" value="Login" id="logIn" class="btn solid" />

				</form>
				<!-- Registration Page User -->
				<form action="SignUP" method="post" class="sign-up-form">
					<img src="./assets/edit (1).png" alt="logo"
						style="margin-top: 20px;">
					<p>Rentide</p>
					<h2 class="title">Sign up</h2>
					  <p>${status}</p>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text" name="name" id="name"
							placeholder="Full Name" required />

					</div>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email" name="email" id="email"
							placeholder="Email" required />
					</div>

					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="file" name="license"
							accept="image/*" required />
					</div>

					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="date"
							name="birthdate" placeholder="Date of Birth" required />
					</div>

					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="number" name="phone"
							placeholder="Phone Number" required />
					</div>

					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							id="InputPassword" name="password" placeholder="Password"
							required /> <i class="fas fa-eye" id="togglePasswordSignUp"></i>

					</div>

					<input type="submit" class="btn" id="signUp" value="Sign up" />
					<p
						style="width: 29.375rem; color: black; height: 3.4375rem; margin-left: 80px; flex-shrink: 0;">
						By clicking Sign up, you agree our <span><strong
							style="text-decoration: underline;">Terms and Condition</strong></span>
						and <span><strong style="text-decoration: underline;">Privacy
								Statement</strong></span>
					</p>

				</form>
			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content">
					<h3>New here ?</h3>
					<p>Explore, Discover, Rent: Your Gateway to Hassle-Free
						Travelling !</p>
					<button class="btn transparent" id="sign-up-btn">Sign up</button>
				</div>
				<img src="./assets/motor.png" class="image" alt="" />
			</div>

			<div class="panel right-panel">
				<div class="content">
					<h3>Need bike and scooter for rent?</h3>
					<p>Unlock Comfort, Rent a Bikes and Scooter – Travel on your
						own!</p>
					<button class="btn transparent" id="sign-in-btn">Sign in</button>
				</div>
				<img src="assets/scooetr.png" class="image" alt="" />
			</div>

		</div>
	</div>
</body>

<script src="./js/login.js">
document.addEventListener("DOMContentLoaded", function() {
	const passwordInput = document.getElementById("passwordInput");
	const togglePassword = document.getElementById("togglePassword");

	togglePassword.addEventListener("click", function() {
		const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
		passwordInput.setAttribute("type", type);
		// Toggle the eye icon based on the password visibility
		this.classList.toggle("fa-eye-slash");
	});

	var status =document.getElementById("status").value;
	
	if(status)==success{
		swal("Good job!", "Login Successful!", "success");

	}
	else{
		swal("Oops!", data.message || "Wrong email or password!", "error");
}
	}
	
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</html>