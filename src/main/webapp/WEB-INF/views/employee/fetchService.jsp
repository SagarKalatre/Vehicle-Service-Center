<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fetch Service</title>

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

            <h1>Find Service Job Card</h1>

            <p class="dashboard-subtitle">
                Search for a registered service using its Job Card ID.
            </p>

            <div class="form-card">

                <h2>Search Service</h2>

                <form action="${pageContext.request.contextPath}/employee/fetch-service"
                    method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Service Job Card ID</label>
                            <input type="number"
                                name="serviceJobCardId"
                                placeholder="Enter Service Job Card ID"
                                required>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <div class="form-actions">

                        <a href="${pageContext.request.contextPath}/employee/dashboard"
                            class="cancel-btn">
                            Cancel
                        </a>

                        <button type="submit">
                            Search Service
                        </button>

                    </div>

                </form>

                <p class="form-message">${message}</p>

            </div>

        </main>

    </div>

</body>
</html>
