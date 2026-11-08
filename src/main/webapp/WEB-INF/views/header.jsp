
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/style.css">
<header class="main-header">

    <div class="header-brand">
        <div class="brand-icon">V</div>

        <div>
            <h2>Vehicle Service Center</h2>
            <span>Management System</span>
        </div>
    </div>

    <div class="header-user">

        <div class="user-info">
            <span class="user-label">Welcome back,</span>
            <strong>${sessionScope.username}</strong>
        </div>

        <a href="${pageContext.request.contextPath}/logout"
        class="logout-btn">
        Logout
    </a>

</div>

</header>
