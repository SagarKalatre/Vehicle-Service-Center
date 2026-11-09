<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Vehicles</title>

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

            <h1>View Vehicles</h1>

            <p class="dashboard-subtitle">
                Search a vehicle or view all registered vehicles.
            </p>

            <!-- Search Vehicle -->
            <div class="form-card employee-search-card">

                <h2>Search Vehicle</h2>

                <p class="dashboard-subtitle">
                    Enter the Vehicle ID to view its details.
                </p>

                <form action="${pageContext.request.contextPath}/employee/fetch-vehicle"
                      method="post">

                    <div class="form-group">

                        <label>Vehicle ID</label>

                        <input type="number"
                               name="vehicleId"
                               placeholder="Enter Vehicle ID"
                               required>

                    </div>

                    <div class="form-actions">

                        <button type="submit">
                            Search Vehicle
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/dashboard"
                           class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

                <p class="form-message">${message}</p>

            </div>

            <!-- All Vehicles -->
            <div class="form-card vehicle-list-card">

                <h2>All Registered Vehicles</h2>

                <p class="dashboard-subtitle">
                    Total vehicles: ${vehicles.size()}
                </p>

                <div class="vehicle-table-wrapper">

                    <table class="vehicle-table">

                        <thead>
                            <tr>
                                <th>Vehicle ID</th>
                                <th>Vehicle Number</th>
                                <th>Vehicle Type</th>
                                <th>Customer ID</th>
                                <th>Customer Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="vehicle" items="${vehicles}">

                                <tr>

                                    <td>${vehicle.vehicleId}</td>

                                    <td>${vehicle.vehicleNumber}</td>

                                    <td>${vehicle.vehicleType}</td>

                                    <td>${vehicle.customer.customerId}</td>

                                    <td>
                                        ${vehicle.customer.firstname}
                                        ${vehicle.customer.lastname}
                                    </td>

                                    <td class="vehicle-actions">

                                        <form action="${pageContext.request.contextPath}/employee/fetch-vehicle"
                                              method="post">

                                            <input type="hidden"
                                                   name="vehicleId"
                                                   value="${vehicle.vehicleId}">

                                            <button type="submit">
                                                View
                                            </button>

                                        </form>

                                        <a href="${pageContext.request.contextPath}/employee/update-vehicle?vehicleId=${vehicle.vehicleId}"
                                           class="cancel-btn">
                                            Update
                                        </a>

                                    </td>

                                </tr>

                            </c:forEach>

                            <c:if test="${empty vehicles}">
                                <tr>
                                    <td colspan="6" class="no-vehicles">
                                        No vehicles registered yet.
                                    </td>
                                </tr>
                            </c:if>

                        </tbody>

                    </table>

                </div>

            </div>

        </main>

    </div>

</body>
</html>