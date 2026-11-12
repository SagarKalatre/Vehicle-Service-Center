
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Service Job Cards</title>

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

            <h1>View Service Job Cards</h1>

            <p class="dashboard-subtitle">
                Search a service job card or view all registered service job cards.
            </p>

            <!-- Search Service Job Card -->
            <div class="form-card employee-search-card">

                <h2>Search Service Job Card</h2>

                <p class="dashboard-subtitle">
                    Enter the Service Job Card ID to view its details.
                </p>

                <form action="${pageContext.request.contextPath}/employee/fetch-service"
                      method="post">

                    <div class="form-group">

                        <label>Service Job Card ID</label>

                        <input type="number"
                               name="serviceJobCardId"
                               placeholder="Enter Service Job Card ID"
                               required>

                    </div>

                    <div class="form-actions">

                        <button type="submit">
                            Search Service
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/dashboard"
                           class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

                <p class="form-message">${message}</p>

            </div>

            <!-- All Service Job Cards -->
            <div class="form-card vehicle-list-card">

                <h2>All Registered Service Job Cards</h2>

                <p class="dashboard-subtitle">
                    Total service job cards: ${services.size()}
                </p>

                <div class="vehicle-table-wrapper">

                    <table class="vehicle-table">

                        <thead>
                            <tr>
                                <th>Job Card ID</th>
                                <th>Vehicle ID</th>
                                <th>Vehicle Number</th>
                                <th>Service Start Date</th>
                                <th>Service End Date</th>
                                <th>Contact Number</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="service" items="${services}">

                                <tr>

                                    <td>${service.serviceJobCardId}</td>

                                    <td>${service.vehicle.vehicleId}</td>

                                    <td>${service.vehicle.vehicleNumber}</td>

                                    <td>${service.serviceStartDate}</td>

                                    <td>${service.serviceEndDate}</td>

                                    <td>${service.contactNumber}</td>

                                    <td class="vehicle-actions">

                                        <form action="${pageContext.request.contextPath}/employee/fetch-service"
                                              method="post">

                                            <input type="hidden"
                                                   name="serviceJobCardId"
                                                   value="${service.serviceJobCardId}">

                                            <button type="submit">
                                                View
                                            </button>

                                        </form>

                                        <a href="${pageContext.request.contextPath}/employee/update-service?serviceJobCardId=${service.serviceJobCardId}"
                                           class="cancel-btn">
                                            Update
                                        </a>

                                    </td>

                                </tr>

                            </c:forEach>

                            <c:if test="${empty services}">
                                <tr>
                                    <td colspan="7" class="no-vehicles">
                                        No service job cards registered yet.
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
