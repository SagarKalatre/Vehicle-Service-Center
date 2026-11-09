<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle Details</title>

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

            <a href="${pageContext.request.contextPath}/employee/fetch-vehicle"
                class="active">
                View Vehicles
            </a>

            <a href="${pageContext.request.contextPath}/employee/add-service">
                Add Service Job Card
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-service">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>Vehicle Details</h1>

            <p class="dashboard-subtitle">
                View complete information about the registered vehicle.
            </p>

            <div class="employee-profile-card">

                <div class="employee-profile-header">

                    <div class="employee-profile-avatar">

                        <c:choose>

                            <c:when test="${vehicle.vehicleType eq 'Car'}">
                                🚗
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Bike'}">
                                🏍️
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Scooter'}">
                                🛵
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Truck'}">
                                🚚
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Bus'}">
                                🚌
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Auto Rickshaw'}">
                                🛺
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Tractor'}">
                                🚜
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Van'}">
                                🚐
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Jeep'}">
                                🚙
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Bicycle'}">
                                🚲
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Electric Vehicle'}">
                                🔋
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Ambulance'}">
                                🚑
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Fire Truck'}">
                                🚒
                            </c:when>

                            <c:when test="${vehicle.vehicleType eq 'Construction Vehicle'}">
                                🏗️
                            </c:when>

                            <c:otherwise>
                                🚘
                            </c:otherwise>

                        </c:choose>

                    </div>

                    <div>
                        <h2>${vehicle.vehicleNumber}</h2>
                        <span>
                            ${vehicle.vehicleType} |
                            Vehicle ID: ${vehicle.vehicleId}
                        </span>
                    </div>

                </div>

                <div class="employee-details-grid">

                    <div class="detail-item">
                        <label>Vehicle ID</label>
                        <strong>${vehicle.vehicleId}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Vehicle Number</label>
                        <strong>${vehicle.vehicleNumber}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Vehicle Type</label>
                        <strong>${vehicle.vehicleType}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Customer ID</label>
                        <strong>${vehicle.customer.customerId}</strong>
                    </div>

                </div>

                <div class="profile-actions">

                    <a href="${pageContext.request.contextPath}/employee/update-vehicle?vehicleId=${vehicle.vehicleId}"
                        class="primary-link">
                        Update Vehicle
                    </a>

                    <a href="${pageContext.request.contextPath}/employee/fetch-vehicle"
                        class="cancel-btn">
                        Back to Search
                    </a>

                </div>

            </div>

        </main>

    </div>

</body>
</html>
