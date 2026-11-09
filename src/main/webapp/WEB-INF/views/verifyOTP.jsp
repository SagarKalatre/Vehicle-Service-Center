<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Verify OTP</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="login-page">

    <div class="login-container">

        <div class="login-brand">
            <h2>Vehicle Service Center</h2>
            <p>Account Security</p>
        </div>

        <h2>Verify OTP</h2>

        <p>Enter the 6-digit OTP sent to your registered email.</p>

        <c:if test="${not empty message}">
            <div class="login-error">${message}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/verifyOTP"
              method="post">

            <label>Enter OTP</label>

            <input type="text"
                   name="otp"
                   placeholder="Enter 6-digit OTP"
                   maxlength="6"
                   pattern="[0-9]{6}"
                   inputmode="numeric"
                   required>

            <button type="submit" class="login-submit-btn">
                Verify OTP →
            </button>

        </form>

        <p>
            <a href="${pageContext.request.contextPath}/forgotPassword">
                Request New OTP
            </a>
        </p>

    </div>

</body>
</html>