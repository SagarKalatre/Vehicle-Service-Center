
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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

            <a href="${pageContext.request.contextPath}/employee/fetch-service">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>View Customers</h1>

            <p class="dashboard-subtitle">
                Search a customer or view all registered customers.
            </p>

            <!-- Search Customer -->
            <div class="form-card employee-search-card">

                <h2>Search Customer</h2>

                <p class="dashboard-subtitle">
                    Enter the Customer ID to view customer details.
                </p>

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

            <!-- All Customers -->
            <div class="form-card vehicle-list-card">

                <h2>All Registered Customers</h2>

                <p class="dashboard-subtitle">
                    Total customers: ${customers.size()}
                </p>

                <div class="vehicle-table-wrapper">

                    <table class="vehicle-table">

                        <thead>
                            <tr>
                                <th>Customer ID</th>
                                <th>Customer Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="customer" items="${customers}">

                                <tr>

                                    <td>${customer.customerId}</td>

                                    <td>
                                        ${customer.firstname}
                                        ${customer.middlename}
                                        ${customer.lastname}
                                    </td>

                                    <td>${customer.phone_1}</td>

                                    <td>${customer.emailId}</td>

                                    <td class="vehicle-actions">

                                        <form action="${pageContext.request.contextPath}/employee/fetch-customer"
                                              method="post">

                                            <input type="hidden"
                                                   name="customerId"
                                                   value="${customer.customerId}">

                                            <button type="submit">
                                                View
                                            </button>

                                        </form>

                                        <a href="${pageContext.request.contextPath}/employee/update-customer?customerId=${customer.customerId}"
                                           class="cancel-btn">
                                            Update
                                        </a>

                                    </td>

                                </tr>

                            </c:forEach>

                            <c:if test="${empty customers}">
                                <tr>
                                    <td colspan="5" class="no-vehicles">
                                        No customers registered yet.
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
