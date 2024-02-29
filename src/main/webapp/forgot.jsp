<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap">
<link rel="stylesheet" href="./css/login.css" />
<title>Reset Password</title>
</head>

<body>
	<div class="container">
		<div class="panels-container">

			<div class="panel left-panel">
				<img src="./assets/ktm.png" class="image" alt="" />
			</div>
		</div>
		<div class="forms-container">
			<div class="signin-signup">
				<!-- This is the form for entering email -->
				<form action="" class="sign-in-form" id="verifyForm"
					onsubmit="return validatePhoneNumber()">
					<h2 class="title">Forgot password?</h2>
					<p id="gyante">Please enter your email to get the OTP</p>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email" name="email"
							id="email" placeholder="Email" required />
					</div>
					<input type="submit" value="Submit" class="btn solid" />
					<p class="back-link" id="#">
						<a href="Login"> <i class="fas fa-arrow-left"></i> Back
						</a>
				</form>

				<!-- This is for OTP -->
				<form action="#" class="otp-form" id="otpForm"
					style="display: none;">
					<h2 class="title" id="verify">Verification</h2>
					<p>Please enter the OTP that we just sent you.</p>
					<div class="input-field">
						<i class="fas fa-key"></i> <input type="text" name="otp" id="otp"
							placeholder="Enter OTP" required />
					</div>
					<input type="submit" value="Submit" class="btn solid"
						onsubmit="return validateOTP()" />
					<div class="resend-otp-section">
						<p>
							Didn't receive the OTP? <a href="#" id="resendOTP">Resend it?</a>
						</p>
					</div>
					<br>
					<p class="back-link" id="otpFormBackBtn">
						<i class="fas fa-arrow-left"></i> Back
				</form>

				<!-- This is for new password creation -->
				<form action="#" class="new-password-form" id="newPasswordForm"
					style="display: none;" onsubmit="return validatePassword()">
					<h2 class="title">New Credentials</h2>
					<p>Create a new secure password</p>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							name="newPassword" id="newPassword" placeholder="New Password"
							required /> <i class="fas fa-eye-slash" id="toggleNewPassword"></i>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							name="confirmPassword" id="confirmPassword"
							placeholder="Confirm Password" required /> <i
							class="fas fa-eye-slash" id="toggleConfirmPassword"></i>
					</div>
					<input type="submit" value="Submit" class="btn solid"
						onsubmit="return validatePassword()" />


					<!-- Added the back button for the new password form -->
					<p class="back-link" id="newPasswordFormBackBtn">
						<i class="fas fa-arrow-left"></i> Back
					</p>
				</form>

				<!-- Add this div for enhanced success message -->
				<div id="successMessage" style="display: none; text-align: center;">
					<i class="fas fa-check-circle"
						style="color: #28a745; font-size: 3rem;"></i>
					<h2 class="title">Congratulations!</h2>
					<p>Password changed successfully.</p>
					<button onclick="handleDoneButtonClick()" class="btn solid">Done</button>
				</div>
			</div>


			<!-- This is the end of the new password creation form -->
		</div>
	</div>

	<div class="panels-container">
		<div class="panel left-panel">
			<img src="./img/rentomatic-04.png" class="image" alt="" />
		</div>
	</div>
	</div>


	<script src="./js/forgot.js">
 
  </script>
</body>

</html>