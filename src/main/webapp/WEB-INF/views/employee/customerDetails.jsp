
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>

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

            <h1>Customer Details</h1>

            <p class="dashboard-subtitle">
                View complete customer information.
            </p>

            <div class="employee-profile-card">

                <div class="employee-profile-header">

                    <div class="employee-profile-avatar">
                        👤
                    </div>

                    <div>
                        <h2>
                            ${customer.firstname}
                            ${customer.lastname}
                        </h2>

                        <span>Customer ID: ${customer.customerId}</span>
                    </div>

                </div>

                <div class="employee-details-grid">

                    <div class="detail-item">
                        <label>First Name</label>
                        <strong>${customer.firstname}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Middle Name</label>
                        <strong>${customer.middlename}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Last Name</label>
                        <strong>${customer.lastname}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Phone Number 1</label>
                        <strong>${customer.phone_1}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Phone Number 2</label>
                        <strong>${customer.phone_2}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Email Address</label>
                        <strong>${customer.emailId}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Date of Birth</label>
                        <strong>${customer.DOB}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Gender</label>
                        <strong>${customer.gender}</strong>
                    </div>

                </div>

                <div class="profile-actions">

                    <a href="${pageContext.request.contextPath}/employee/update-customer?customerId=${customer.customerId}"
                       class="primary-link">
                        Update Customer
                    </a>

                    <a href="${pageContext.request.contextPath}/employee/fetch-customer"
                       class="cancel-btn">
                        Back to Search
                    </a>

                </div>

            </div>

        </main>

    </div>

</body>
</html>
