
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Added Successfully</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <main class="dashboard-container">

        <!-- Dashboard Heading -->
        <div class="dashboard-heading">

            <div>
                <h1>Employee Added Successfully!</h1>

                <p>
                    A new employee has been registered successfully
                    in your vehicle service center.
                </p>
            </div>

            <span class="dashboard-role">
                Administrator
            </span>

        </div>

        <!-- Success Message -->
        <div class="form-card">

            <h2>Employee Details</h2>

            <p class="dashboard-subtitle">
                Here are the details of the newly registered employee.
            </p>

            <div class="form-grid">

                <div class="form-group">
                    <label>Employee ID</label>
                    <input type="text"
                           value="${employee.employeeId}"
                           readonly>
                </div>

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text"
                           value="${employee.firstname}"
                           readonly>
                </div>

                <div class="form-group">
                    <label>Middle Name</label>
                    <input type="text"
                           value="${employee.middlename}"
                           readonly>
                </div>

                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text"
                           value="${employee.lastname}"
                           readonly>
                </div>

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="text"
                           value="${employee.emailId}"
                           readonly>
                </div>

            </div>

            <div class="form-divider"></div>

            <h2>What Would You Like to Do?</h2>

            <p class="dashboard-subtitle">
                You can open the employee portal or return to the admin dashboard.
            </p>

            <div class="form-actions">

                <a href="${pageContext.request.contextPath}/admin/employee-portal?employeeId=${employee.employeeId}"
                   class="cancel-btn">
                    Open Employee Portal →
                </a>

                <a href="${pageContext.request.contextPath}/admin/dashboard"
                   class="cancel-btn">
                    Back to Admin Dashboard
                </a>

            </div>

        </div>

    </main>

</body>
</html>
