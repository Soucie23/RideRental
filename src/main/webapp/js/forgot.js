   document.getElementById('toggleNewPassword').addEventListener('click', togglePasswordVisibility.bind(null, 'newPassword', 'toggleNewPassword'));
    document.getElementById('toggleConfirmPassword').addEventListener('click', togglePasswordVisibility.bind(null, 'confirmPassword', 'toggleConfirmPassword'));

    document.getElementById('verifyForm').addEventListener('submit', function (event) {
      event.preventDefault();
      validatePhoneNumber();
    });

    document.getElementById('otpForm').addEventListener('submit', function (event) {
      event.preventDefault();
      validateOTP();
    });

    document.getElementById('newPasswordForm').addEventListener('submit', function (event) {
      event.preventDefault();
      validatePassword();
    });

    function togglePasswordVisibility(inputId, iconId) {
      const passwordInput = document.getElementById(inputId);
      const passwordIcon = document.getElementById(iconId);

      if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        passwordIcon.classList.remove('fa-eye-slash');
        passwordIcon.classList.add('fa-eye');
      } else {
        passwordInput.type = 'password';
        passwordIcon.classList.remove('fa-eye');
        passwordIcon.classList.add('fa-eye-slash');
      }
    }

    function validatePassword() {
  const emailInput = document.getElementById('email');
  const newPasswordInput = document.getElementById('newPassword');
  const confirmPasswordInput = document.getElementById('confirmPassword');
  const email = emailInput.value;
  const newPassword = newPasswordInput.value;
  const confirmPassword = confirmPasswordInput.value;

  // Email validation
  if (!email) {
    alert('Email address is required.');
    return false;
  }

  // Built-in email validation for HTML5
  if (!emailInput.checkValidity()) {
    alert('Invalid email address. Please enter a valid email.');
    return false;
  }

  // Password length validation
  if (newPassword.length < 6) {
    alert('Password is too short. Please use at least 6 characters.');
    return false;
  }

  // Add any other password validation logic as needed

  // Password match validation
  if (newPassword !== confirmPassword) {
    alert('Passwords do not match. Please enter matching passwords.');
    return false;
  }

  // If all validations pass, hide the current form and show the success message
  hideForm('newPasswordForm');
  showSuccessMessage();

  // Return false to prevent form submission
  return false;
}

// Function to hide a form by its ID
function hideForm(formId) {
  const currentForm = document.getElementById(formId);
  currentForm.style.display = 'none';
}

// Function to show the success message
function showSuccessMessage() {
  const successMessage = document.getElementById('successMessage');
  successMessage.style.display = 'block';
}


    // Function to show the OTP box
    function showOTPBox() {
      const verifyForm = document.getElementById('verifyForm');
      const otpForm = document.getElementById('otpForm');

      // Hide the verify form and show the OTP box
      verifyForm.style.display = 'none';
      otpForm.style.display = 'flex';
    }

    // Event listener for the submit button in the verification form
    document.getElementById('verifyForm').addEventListener('submit', function (event) {
      event.preventDefault();
      showOTPBox();
    });

    // Function to handle the "Done" button click event
function handleDoneButtonClick() {
  // You can perform any additional actions here if needed
  // For now, redirect to index.html
  window.location.href = 'index.html';
}

    function validateOTP() {
      // Add OTP validation logic if needed
      // For now, always return true to allow submission
      showNewPasswordForm();
      return false; // Prevent form submission (you can remove this if you want to allow submission)
    }

    function showNewPasswordForm() {
      const otpForm = document.getElementById('otpForm');
      const newPasswordForm = document.getElementById('newPasswordForm');

      // Show the new password form and hide the OTP form
      otpForm.style.display = 'none';
      newPasswordForm.style.display = 'flex';
    }

    function goBack(formId) {
      const currentForm = document.getElementById(formId);
      const previousFormId = formId === 'otpForm' ? 'verifyForm' : 'verifyForm'; // Adjust as needed

      const previousForm = document.getElementById(previousFormId);

      // Show the previous form and hide the current form
      currentForm.style.display = 'none';
      previousForm.style.display = 'flex';
    }

    // Event listener for the back button in the OTP form
    document.getElementById('otpFormBackBtn').addEventListener('click', function (event) {
      event.preventDefault();
      goBack('otpForm');
    });

    // Event listener for the back button in the new password form
    document.getElementById('newPasswordFormBackBtn').addEventListener('click', function (event) {
      event.preventDefault();
      goBack('newPasswordForm');
    });