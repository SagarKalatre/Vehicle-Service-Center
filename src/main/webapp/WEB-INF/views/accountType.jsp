<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Choose Account Type</title>

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

            <h1>Create Account</h1>

            <p class="login-subtitle">
                Choose your account type
            </p>

            <c:if test="${not empty message}">
                <div class="login-error">
                    ${message}
                </div>
            </c:if>

            <c:if test="${adminRegistrationAvailable}">
                <a href="${pageContext.request.contextPath}/register/admin"
                   class="login-submit-btn">
                    Admin Registration →
                </a>

                <br><br>
            </c:if>

            <a href="${pageContext.request.contextPath}/register/employee"
               class="login-submit-btn">
                Employee Registration →
            </a>

            <br><br>

            <a href="${pageContext.request.contextPath}/login">
                ← Back to Login
            </a>

        </div>

    </div>

</body>
</html>