<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Service Details</title>

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div class="dashboard-layout">

        <aside class="sidebar">

            <h3>EMPLOYEE PANEL</h3>

            <a href="${pageContext.request.contextPath}/employee/dashboard">
                Dashboard
            </a>

            <a href="${pageContext.request.contextPath}/employee/add-customer">
                Add Customer
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-customer">
                View Customers
            </a>

            <a href="${pageContext.request.contextPath}/employee/delete-customer">
                Delete Customer
            </a>

            <a href="${pageContext.request.contextPath}/employee/add-vehicle">
                Add Vehicle
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-vehicle">
                View Vehicles
            </a>

            <a href="${pageContext.request.contextPath}/employee/add-service">
                Add Service Job Card
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-service"
                class="active">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>Service Details</h1>

            <p class="dashboard-subtitle">
                View complete information about the vehicle service job card.
            </p>

            <div class="employee-profile-card">

                <div class="employee-profile-header">

                    <div class="employee-profile-avatar">
                        🔧
                    </div>

                    <div>
                        <h2>Service Job Card #${service.serviceJobCardId}</h2>
                        <span>Vehicle Service Information</span>
                    </div>

                </div>

                <div class="employee-details-grid">

                    <div class="detail-item">
                        <label>Service Job Card ID</label>
                        <strong>${service.serviceJobCardId}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Service Start Date</label>
                        <strong>${service.serviceStartDate}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Service End Date</label>
                        <strong>${service.serviceEndDate}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Contact Number</label>
                        <strong>${service.contactNumber}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Vehicle ID</label>
                        <strong>${service.vehicle.vehicleId}</strong>
                    </div>

                </div>

                <div class="profile-actions">

                    <a href="${pageContext.request.contextPath}/employee/update-service?serviceJobCardId=${service.serviceJobCardId}"
                        class="primary-link">
                        Update Service
                    </a>

                    <a href="${pageContext.request.contextPath}/employee/fetch-service"
                        class="cancel-btn">
                        Back to Search
                    </a>

                </div>

            </div>

        </main>

    </div>

</body>
</html>
