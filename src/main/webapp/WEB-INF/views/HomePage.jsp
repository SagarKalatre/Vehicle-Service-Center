
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Service Center | Home</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="home-page">

    <nav class="home-navbar">
        <div class="home-brand">
            <span class="brand-icon">V</span>
            <div>
                <h2>Vehicle Service Center</h2>
                <p>Management System</p>
            </div>
        </div>

        <a href="${pageContext.request.contextPath}/login"
           class="home-login-btn">
            Login to Portal →
        </a>
    </nav>

    <main class="home-hero">

        <div class="hero-content">
            <span class="hero-tag">WELCOME TO OUR SERVICE CENTER</span>

            <h1>
                Complete Vehicle Care,
                <span>Made Simple.</span>
            </h1>

            <p>
                Manage customers, vehicles, employees and service records
                efficiently through one centralized management system.
            </p>

            <a href="${pageContext.request.contextPath}/login"
               class="hero-login-btn">
                Get Started →
            </a>

            <div class="hero-features">
                <div>
                    <strong>01</strong>
                    <span>Customer Management</span>
                </div>

                <div>
                    <strong>02</strong>
                    <span>Vehicle Management</span>
                </div>

                <div>
                    <strong>03</strong>
                    <span>Service Tracking</span>
                </div>
            </div>
        </div>

        <%-- <div class="hero-visual">
            <div class="hero-visual-icon">🚘</div>
            <h2>Smart Service Management</h2>
            <p>
                Everything your service center needs,
                organized in one place.
            </p>

            <div class="visual-status">
                <span class="status-dot"></span>
                Efficient • Organized • Reliable
            </div>
        </div> --%>

    </main>

    <footer class="home-footer">
        © 2026 Vehicle Service Center Management System. All rights reserved.
    </footer>

</body>
</html>
