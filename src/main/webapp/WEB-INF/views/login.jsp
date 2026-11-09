
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vehicle Service Center | Login</title>

        <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body class="login-page">

        <div class="login-container">

            <div class="login-brand">
                <span class="brand-icon">V</span>
                <h2>Vehicle Service Center</h2>
                <p>Management System</p>
            </div>

            <div class="login-box">

                <h1>Welcome Back!</h1>
                <p class="login-subtitle">
                    Sign in to access your account
                </p>

                <form action="${pageContext.request.contextPath}/login"
                method="post">

                <label for="username">Username</label>
                <input type="text"
                id="username"
                name="username"
                placeholder="Enter your username"
                autocomplete="username"
                required>

                <label for="password">Password</label>
                <input type="password"
                id="password"
                name="password"
                placeholder="Enter your password"
                autocomplete="current-password"
                required>

                <div class="forgot-password-row">
                    <a href="${pageContext.request.contextPath}/forgotPassword">
                        Forgot Password?
                    </a>
                </div>

                <c:if test="${not empty message}">
                    <div class="login-error">
                        ${message}
                    </div>
                </c:if>

                <button type="submit" class="login-submit-btn">
                    Login to Account →
                </button>

            </form>

            <div class="login-register">
                <p>
                    New user?
                    <a href="${pageContext.request.contextPath}/account-type">
                        Create Account
                    </a>
                </p>
            </div>

        </div>

        <a href="${pageContext.request.contextPath}/HomePage"
        class="login-home-link">
        ← Back to Home Page
    </a>

</div>

</body>
</html>
