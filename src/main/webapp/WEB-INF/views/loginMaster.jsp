<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Arthum Anchor</title>
    <!-- Bootstrap CSS -->
    <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body class="login-page">
<div class="login-container">
    <div class="login-card">
        <div class="login-logo">
            <div class="brand-wrapper">
                <img src="/images/logo.png" alt="Arthum Logo">
                <h2>Arthum</h2>
            </div>
            <p>Anchor Management</p>
        </div>

        <form class="login-form" action="/logindata" method="post">
            <div class="mb-4">
                <label for="email" class="form-label">Email address / Employee ID</label>
                <div class="position-relative">
                    <input type="text" class="form-control" id="email" placeholder="name@company.com" required>
                </div>
            </div>

            <div class="mb-4">
                <div class="d-flex justify-content-between align-items-center mb-1">
                    <label for="password" class="form-label mb-0">Password</label>
                </div>
                <div class="position-relative">
                    <input type="password" class="form-control" id="password" placeholder="••••••••" required>
                    <span class="input-group-text-login" id="togglePassword">
                            <i class="fa-solid fa-eye-slash"></i>
                        </span>
                </div>
            </div>

            <div class="login-footer mb-4">
                <label class="remember-me">
                    <input type="checkbox" class="form-check-input mt-0">
                    <span>Remember me</span>
                </label>
                <a href="#" class="forgot-password">Forgot Password?</a>
            </div>

            <button type="button" class="btn btn-login" id="signInBtn">
                Sign In
            </button>

            <div class="login-divider">
                OR CONTINUE WITH
            </div>

            <div class="social-login">
                <a href="#" class="btn-social">
                    <i class="fa-brands fa-google"></i>
                    Google
                </a>
                <a href="#" class="btn-social">
                    <i class="fa-brands fa-microsoft"></i>
                    Microsoft
                </a>
            </div>
        </form>
    </div>

    <div class="text-center mt-4">
        <p class="text-white-50 small">
            © 2026 Arthum. All rights reserved.
        </p>
    </div>
</div>

<!-- OTP Modal -->
<div class="modal fade otp-modal" id="otpModal" tabindex="-1" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-between align-items-center">
                <h5 class="modal-title fw-bold" style="font-size: 20px; color: #1e293b;">OTP Verification</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center">
                <p class="text-muted mb-0">We have sent a verification code to</p>
                <p class="fw-bold mb-2" style="color: #1e293b;">john.doe@arthum.com</p>

                <div class="otp-inputs">
                    <input type="text" class="otp-input" maxlength="1" pattern="\d*">
                    <input type="text" class="otp-input" maxlength="1" pattern="\d*">
                    <input type="text" class="otp-input" maxlength="1" pattern="\d*">
                    <input type="text" class="otp-input" maxlength="1" pattern="\d*">
                </div>

                <button type="button" class="btn btn-login w-100" id="verifyOtpBtn">
                    Verify & Login
                </button>

                <div class="resend-otp">
                    Didn't receive the code? <a href="#" id="resendBtn">Resend OTP</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="/bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>

<!-- Inline script for password toggle and basic interaction -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#password');
        const signInBtn = document.querySelector('#signInBtn');
        const otpModal = new bootstrap.Modal(document.getElementById('otpModal'));
        const otpInputs = document.querySelectorAll('.otp-input');
        const verifyOtpBtn = document.querySelector('#verifyOtpBtn');

        // Password Toggle
        togglePassword.addEventListener('click', function() {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            const icon = this.querySelector('i');
            icon.classList.toggle('fa-eye');
            icon.classList.toggle('fa-eye-slash');
        });

        // Sign In Click - Show OTP Modal
        signInBtn.addEventListener('click', function() {
            if(document.querySelector('.login-form').checkValidity()) {
                this.innerHTML = '<i class="fa-solid fa-circle-notch fa-spin me-2"></i> Sending OTP...';
                this.style.pointerEvents = 'none';

                setTimeout(() => {
                    this.innerHTML = 'Sign In';
                    this.style.pointerEvents = 'auto';
                    otpModal.show();
                    // Focus first OTP input
                    setTimeout(() => otpInputs[0].focus(), 500);
                }, 1200);
            } else {
                document.querySelector('.login-form').reportValidity();
            }
        });

        // OTP Input Focusing Logic
        otpInputs.forEach((input, index) => {
            input.addEventListener('keyup', (e) => {
                if (e.key >= 0 && e.key <= 9) {
                    if (index < otpInputs.length - 1) otpInputs[index + 1].focus();
                } else if (e.key === 'Backspace') {
                    if (index > 0) otpInputs[index - 1].focus();
                }
            });
        });

        // Verify OTP Logic
        verifyOtpBtn.addEventListener('click', function() {
            this.innerHTML = '<i class="fa-solid fa-circle-notch fa-spin me-2"></i> Verifying...';
            this.style.pointerEvents = 'none';

            setTimeout(() => {
                window.location.href = '/web/factories/masterdashboard';
            }, 1000);
        });
    });
</script>
</body>
</html>