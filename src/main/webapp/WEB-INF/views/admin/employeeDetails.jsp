<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div class="dashboard-layout">

        <aside class="sidebar">

            <h3>ADMIN PANEL</h3>

            <a href="${pageContext.request.contextPath}/admin/dashboard">
                Dashboard
            </a>

            <a href="${pageContext.request.contextPath}/admin/add-employee">
                Add Employee
            </a>

            <a href="${pageContext.request.contextPath}/admin/employee-list"
               class="active">
                View Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/fetch-employee">
                Manage Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/delete-employee">
                Delete Employee
            </a>

        </aside>

        <main class="dashboard-content">

            <h1>Employee Details</h1>

            <p class="dashboard-subtitle">
                View complete employee information.
            </p>

            <div class="employee-profile-card">

                <div class="employee-profile-header">

                    <div class="employee-profile-avatar">
                        👤
                    </div>

                    <div>
                        <h2>
                            ${employee.firstname}
                            ${employee.lastname}
                        </h2>

                        <span>Employee ID: ${employee.employeeId}</span>
                    </div>

                </div>

                <div class="employee-details-grid">

                    <div class="detail-item">
                        <label>First Name</label>
                        <strong>${employee.firstname}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Middle Name</label>
                        <strong>${employee.middlename}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Last Name</label>
                        <strong>${employee.lastname}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Phone Number 1</label>
                        <strong>${employee.phone_1}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Phone Number 2</label>
                        <strong>${employee.phone_2}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Email Address</label>
                        <strong>${employee.emailId}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Date of Birth</label>
                        <strong>${employee.DOB}</strong>
                    </div>

                    <div class="detail-item">
                        <label>Gender</label>
                        <strong>${employee.gender}</strong>
                    </div>

                </div>

                <div class="profile-actions">

                    <a href="${pageContext.request.contextPath}/admin/update-employee?employeeId=${employee.employeeId}"
                       class="primary-link">
                        Update Employee
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/employee-list"
                       class="cancel-btn">
                        Back to Employee List
                    </a>

                </div>

            </div>

        </main>

    </div>

</body>
</html>
