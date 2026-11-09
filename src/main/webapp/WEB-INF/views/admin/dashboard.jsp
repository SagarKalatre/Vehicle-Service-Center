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

    <main class="dashboard-container">

        <!-- Dashboard Heading -->
        <div class="dashboard-heading">

            <div>
                <h1>Admin Dashboard</h1>

                <p>
                    Manage employees and monitor your vehicle service center.
                </p>
            </div>

            <span class="dashboard-role">
                Administrator
            </span>

        </div>

        <!-- Employee Management -->
        <h2 class="section-title">
            Employee Management
        </h2>

        <div class="dashboard-grid">

            <!-- Add Employee -->
            <a href="${pageContext.request.contextPath}/admin/add-employee"
               class="dashboard-card">

                <div class="dashboard-card-icon">＋</div>

                <h3>Add Employee</h3>

                <p>
                    Register a new employee in your service center.
                </p>

                <span class="card-link">Add Employee →</span>

            </a>

            <!-- Manage Employees -->
            <a href="${pageContext.request.contextPath}/admin/fetch-employee"
               class="dashboard-card">

                <div class="dashboard-card-icon">⌕</div>

                <h3>Manage Employees</h3>

                <p>
                    Search for an employee and view their information.
                </p>

                <span class="card-link">Search Employee →</span>

            </a>

            <!-- Update Employee -->
            <a href="${pageContext.request.contextPath}/admin/fetch-employee"
               class="dashboard-card">

                <div class="dashboard-card-icon">✎</div>

                <h3>Update Employee</h3>

                <p>
                    Find an employee and update their details.
                </p>

                <span class="card-link">Update Employee →</span>

            </a>

            <!-- Delete Employee -->
            <a href="${pageContext.request.contextPath}/admin/delete-employee"
               class="dashboard-card">

                <div class="dashboard-card-icon">−</div>

                <h3>Delete Employee</h3>

                <p>
                    Remove an employee from the system.
                </p>

                <span class="card-link">Delete Employee →</span>

            </a>

            <!-- View All Employees -->
            <a href="${pageContext.request.contextPath}/admin/employee-list"
               class="dashboard-card">

                <div class="dashboard-card-icon">☷</div>

                <h3>View All Employees</h3>

                <p>
                    View all registered employees and open their portals.
                </p>

                <span class="card-link">View Employees →</span>

            </a>

        </div>

    </main>

</body>
</html>
