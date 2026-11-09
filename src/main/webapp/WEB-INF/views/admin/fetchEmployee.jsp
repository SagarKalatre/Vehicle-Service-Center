<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Employees</title>

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

            <a href="${pageContext.request.contextPath}/admin/employee-list">
                View Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/fetch-employee"
               class="active">
                Manage Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/delete-employee">
                Delete Employee
            </a>

        </aside>

        <!-- Main Content -->
        <main class="dashboard-content">

            <h1>Manage Employees</h1>

            <p class="dashboard-subtitle">
                Search for an employee using their unique Employee ID.
            </p>

            <div class="form-card employee-search-card">

                <h2>Search Employee</h2>

                <p class="dashboard-subtitle">
                    Enter the Employee ID to view, update or manage
                    employee information.
                </p>

                <form action="${pageContext.request.contextPath}/admin/fetch-employee"
                      method="post">

                    <div class="form-group">

                        <label>Employee ID *</label>

                        <input type="number"
                               name="employeeId"
                               placeholder="Enter Employee ID"
                               min="1"
                               required>

                    </div>

                    <div class="form-actions">

                        <button type="submit">
                            Search Employee
                        </button>

                        <a href="${pageContext.request.contextPath}/admin/dashboard"
                           class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

                <p class="form-message">
                    ${message}
                </p>

            </div>

            <!-- Quick Navigation -->
            <div class="form-card" style="margin-top: 25px;">

                <h2>Quick Actions</h2>

                <p class="dashboard-subtitle">
                    You can also access these employee management options.
                </p>

                <div class="form-actions">

                    <a href="${pageContext.request.contextPath}/admin/add-employee"
                       class="cancel-btn">
                        + Add Employee
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/employee-list"
                       class="cancel-btn">
                        View All Employees
                    </a>

                </div>

            </div>

        </main>

    </div>

</body>
</html>
