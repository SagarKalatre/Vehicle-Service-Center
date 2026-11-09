
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Service Center | Logout</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="logout-page">

    <div class="logout-card">

        <div class="logout-success-icon">✓</div>

        <h1>Successfully Logged Out!</h1>

        <p>
            You have safely logged out of the Vehicle Service Center
            Management System.
        </p>

        <p class="logout-subtitle">
            Thank you for using our system.
        </p>

        <a href="${pageContext.request.contextPath}/HomePage"
           class="logout-home-btn">
            ← Go to Home Page
        </a>

    </div>

</body>
</html>
