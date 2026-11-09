
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fetch Customer</title>

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

            <a href="${pageContext.request.contextPath}/employee/fetch-customer"
               class="active">
                View Customers
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

            <a href="${pageContext.request.contextPath}/employee/fetch-service">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>Search Customer</h1>

            <p class="dashboard-subtitle">
                Find customer information using Customer ID.
            </p>

            <div class="form-card employee-search-card">

                <h2>Fetch Customer By ID</h2>

                <form action="${pageContext.request.contextPath}/employee/fetch-customer"
                      method="post">

                    <div class="form-group">

                        <label>Customer ID</label>

                        <input type="number"
                               name="customerId"
                               placeholder="Enter Customer ID"
                               required>

                    </div>

                    <div class="form-actions">

                        <button type="submit">
                            Search Customer
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/dashboard"
                           class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

                <p class="form-message">${message}</p>

            </div>

        </main>

    </div>

</body>
</html>
