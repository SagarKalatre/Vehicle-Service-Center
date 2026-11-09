<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">

    <div class="login-container">

        <div class="login-brand">
            <h2>Vehicle Service Center</h2>
            <p>Reset your account password</p>
        </div>

        <h2>Forgot Password?</h2>
        <p>Enter your registered email address to receive an OTP.</p>

        <c:if test="${not empty message}">
            <div class="login-error">${message}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/sendOTP"
              method="post">

            <label>Email Address</label>

            <input type="email"
                   name="emailId"
                   placeholder="Enter registered email"
                   required>

            <button type="submit" class="login-submit-btn">
                Send OTP →
            </button>

        </form>

        <p>
            <a href="${pageContext.request.contextPath}/login">
                Back to Login
            </a>
        </p>

    </div>

</body>
</html>