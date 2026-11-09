<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Vehicle</title>

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

            <a href="${pageContext.request.contextPath}/employee/add-vehicle"
                class="active">
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

            <h1>Add Vehicle</h1>

            <p class="dashboard-subtitle">
                Register a new vehicle for an existing customer.
            </p>

            <div class="form-card">

                <h2>Vehicle Information</h2>

                <form action="${pageContext.request.contextPath}/employee/add-vehicle"
                    method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Vehicle Number</label>

                            <input type="number"
                                name="vehicleNumber"
                                placeholder="Enter 4-digit Vehicle Number"
                                min="1000"
                                max="9999"
                                required>
                        </div>

                        <div class="form-group">
                            <label>Vehicle Type</label>

                            <input type="text"
                                name="vehicleType"
                                placeholder="Enter Vehicle Type"
                                required>
                        </div>

                        <div class="form-group">
                            <label>Select Customer</label>

                            <select name="customer.customerId" required>

                                <option value="" disabled selected>
                                    Select Customer
                                </option>

                                <c:forEach var="customer" items="${customers}">

                                    <option value="${customer.customerId}">
                                        ${customer.firstname}
                                        ${customer.middlename}
                                        ${customer.lastname}
                                        - ${customer.phone_1}
                                    </option>

                                </c:forEach>

                            </select>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <div class="form-actions">

                        <button type="submit">
                            Add Vehicle
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/dashboard"
                            class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

            </div>

        </main>

    </div>

</body>
</html>
