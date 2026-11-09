<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Service</title>

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

            <a href="${pageContext.request.contextPath}/employee/add-service"
                class="active">
                Add Service Job Card
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-service">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>Update Service Details</h1>

            <p class="dashboard-subtitle">
                Modify the existing vehicle service information.
            </p>

            <div class="form-card">

                <h2>Service Information</h2>

                <form action="${pageContext.request.contextPath}/employee/update-service"
                    method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Service Job Card ID</label>
                            <input type="number"
                                name="serviceJobCardId"
                                value="${service.serviceJobCardId}"
                                readonly>
                        </div>

                        <div class="form-group">
                            <label>Service Start Date</label>
                            <input type="date"
                                name="serviceStartDate"
                                value="${service.serviceStartDate}"
                                required>
                        </div>

                        <div class="form-group">
                            <label>Service End Date</label>
                            <input type="date"
                                name="serviceEndDate"
                                value="${service.serviceEndDate}">
                        </div>

                        <div class="form-group">
                            <label>Contact Number</label>
                            <input type="text"
                                name="contactNumber"
                                value="${service.contactNumber}"
                                required>
                        </div>

                        <div class="form-group">
                            <label>Vehicle ID</label>
                            <input type="number"
                                name="vehicle.vehicleId"
                                value="${service.vehicle.vehicleId}"
                                required>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <div class="form-actions">

                        <a href="${pageContext.request.contextPath}/employee/fetch-service"
                            class="cancel-btn">
                            Cancel
                        </a>

                        <button type="submit">
                            Update Service
                        </button>

                    </div>

                </form>

            </div>

        </main>

    </div>

</body>
</html>
