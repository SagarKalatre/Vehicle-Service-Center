
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div class="dashboard-layout">

        <aside class="sidebar">
            <h3>ADMIN PANEL</h3>

            <a href="${pageContext.request.contextPath}/admin/dashboard"
               class="active">Dashboard</a>

            <a href="${pageContext.request.contextPath}/admin/add-employee">
                Add Employee
            </a>

            <a href="${pageContext.request.contextPath}/admin/employee-list">
                View Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/fetch-employee">
                Manage Employees
            </a>
        </aside>

        <main class="dashboard-content">

            <h1>Admin Dashboard</h1>
            <p class="dashboard-subtitle">
                Manage your Vehicle Service Center
            </p>

            <div class="dashboard-welcome">
                <h2>Welcome, ${sessionScope.username}!</h2>
                <p>You are logged in as Administrator.</p>
            </div>

            <h2>Employee Management</h2>

            <div class="dashboard-cards">

                <div class="dashboard-card">
                    <h3>Add Employee</h3>
                    <p>Create a new employee account.</p>
                    <a href="${pageContext.request.contextPath}/admin/add-employee">
                        Add Employee →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>View Employees</h3>
                    <p>View all registered employees.</p>
                    <a href="${pageContext.request.contextPath}/admin/employee-list">
                        View Employees →
                    </a>
                </div>

                <div class="dashboard-card">
                    <h3>Manage Employees</h3>
                    <p>Search and manage employee records.</p>
                    <a href="${pageContext.request.contextPath}/admin/fetch-employee">
                        Manage Employees →
                    </a>
                </div>

            </div>

        </main>

    </div>

</body>
</html>
