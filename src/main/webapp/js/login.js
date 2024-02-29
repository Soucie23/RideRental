document.addEventListener("DOMContentLoaded", function() {
	const passwordInput = document.getElementById("passwordInput");
	const togglePassword = document.getElementById("togglePassword");

	togglePassword.addEventListener("click", function() {
		const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
		passwordInput.setAttribute("type", type);
		// Toggle the eye icon based on the password visibility
		this.classList.toggle("fa-eye-slash");
	});

	const signInForm = document.querySelector(".sign-in-form");

	signInForm.addEventListener("submit", function(event) {
		event.preventDefault(); // Prevent default form submission

		const formData = new FormData(signInForm);
		// Send AJAX request for server-side authentication
		fetch("http://localhost:8081/RideRental/Login", { // Replace "/Login" with your actual login script URL
			method: "POST",
			body: formData
		})
			.then(response => response.json()) // Parse the response as JSON
			.then(data => {
				if (data.success) {
					swal("Good job!", "Login Successful!", "success");
					// Redirect to dashboard on successful login
					window.location.href = "dashboard.jsp";
				} else {
					swal("Oops!", data.message || "Wrong email or password!", "error");
				}
			})
			.catch(error => {
				console.error("Error:", error);
				swal("Oops!", "Something went wrong. Please try again.", "error");
			});
	});

	const sign_in_btn = document.querySelector("#sign-in-btn");
	const sign_up_btn = document.querySelector("#sign-up-btn");
	const container = document.querySelector(".container");

	sign_up_btn.addEventListener("click", () => {
		container.classList.add("sign-up-mode");
	});

	sign_in_btn.addEventListener("click", () => {
		container.classList.remove("sign-up-mode");
	});
});
