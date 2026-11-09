
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div class="dashboard-layout">

        <aside class="sidebar">

            <h3>EMPLOYEE PANEL</h3>

            <a href="${pageContext.request.contextPath}/employee/dashboard"
               class="active">
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

            <a href="${pageContext.request.contextPath}/employee/fetch-service">
                View Service Job Cards
            </a>

        </aside>

        <main class="dashboard-content">

            <c:choose>

                <c:when test="${not empty sessionScope.adminViewingEmployeeId}">

                    <h1>Employee Dashboard</h1>

                    <div class="dashboard-welcome">
                        <h2>Viewing Employee: ${sessionScope.adminViewingEmployeeName}</h2>
                        <p>Admin: ${sessionScope.username}</p>

                        
                        <a href="${pageContext.request.contextPath}/admin/dashboard"
                            class="back-admin-btn">
                            ← Back to Admin Dashboard
                        </a>

                    </div>

                </c:when>

                <c:otherwise>

                    <h1>Employee Dashboard</h1>

                    <div class="dashboard-welcome">
                        <h2>Welcome, ${sessionScope.username}!</h2>
                        <p>Manage customers, vehicles and service job cards.</p>
                    </div>

                </c:otherwise>

            </c:choose>

            <h2>Service Center Operations</h2>

            <div class="dashboard-cards">

                <div class="dashboard-card">
                    <h3>Add Customer</h3>
                    <p>Register a new customer in the system.</p>
                    <a href="${pageContext.request.contextPath}/employee/add-customer">
                        Add Customer →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>View Customers</h3>
                    <p>Search and manage customer records.</p>
                    <a href="${pageContext.request.contextPath}/employee/fetch-customer">
                        View Customers →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>Delete Customer</h3>
                    <p>Remove a customer record from the system.</p>
                    <a href="${pageContext.request.contextPath}/employee/delete-customer">
                        Delete Customer →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>Add Vehicle</h3>
                    <p>Register a customer's vehicle.</p>
                    <a href="${pageContext.request.contextPath}/employee/add-vehicle">
                        Add Vehicle →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>View Vehicles</h3>
                    <p>Find and manage registered vehicles.</p>
                    <a href="${pageContext.request.contextPath}/employee/fetch-vehicle">
                        View Vehicles →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>Add Service Job Card</h3>
                    <p>Create a new vehicle service job card.</p>
                    <a href="${pageContext.request.contextPath}/employee/add-service">
                        Create Job Card →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>View Service Job Cards</h3>
                    <p>View and manage service job cards.</p>
                    <a href="${pageContext.request.contextPath}/employee/fetch-service">
                        View Job Cards →
                    </a>
                </div>

            </div>

        </main>

    </div>

</body>
</html>
