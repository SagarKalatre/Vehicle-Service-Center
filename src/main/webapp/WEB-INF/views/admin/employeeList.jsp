<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <div class="dashboard-layout">

        <!-- Admin Sidebar -->
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

        <!-- Main Content -->
        <main class="dashboard-content">

            <h1>Employee Management</h1>

            <p class="dashboard-subtitle">
                View all registered employees and access their portals.
            </p>

            <div class="list-card">

                <!-- Table Header -->
                <div class="list-card-header">

                    <div>
                        <h2>All Employees</h2>

                        <p class="dashboard-subtitle">
                            Registered employee records
                        </p>
                    </div>

                    <a href="${pageContext.request.contextPath}/admin/add-employee"
                       class="primary-link">
                        + Add Employee
                    </a>

                </div>

                <!-- Employee Table -->
                <div class="table-container">

                    <table>

                        <thead>
                            <tr>
                                <th>Employee ID</th>
                                <th>Employee Name</th>
                                <th>Email Address</th>
                                <th>Username</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="employee" items="${employees}">

                                <tr>

                                    <td>
                                        ${employee.employeeId}
                                    </td>

                                    <td>
                                        ${employee.firstname}
                                        ${employee.lastname}
                                    </td>

                                    <td>
                                        ${employee.emailId}
                                    </td>

                                    <td>
                                        ${employee.login.username}
                                    </td>

                                    <td>

                                        <a class="table-action"
                                           href="${pageContext.request.contextPath}/admin/employee-portal?employeeId=${employee.employeeId}">
                                            Open Portal →
                                        </a>

                                    </td>

                                </tr>

                            </c:forEach>

                            <c:if test="${empty employees}">

                                <tr>
                                    <td colspan="5" class="empty-message">
                                        No employees found.
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
