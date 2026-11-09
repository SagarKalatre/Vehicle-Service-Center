<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Employee</title>

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

            <a href="${pageContext.request.contextPath}/admin/fetch-employee">
                Manage Employees
            </a>

            <a href="${pageContext.request.contextPath}/admin/delete-employee"
               class="active">
                Delete Employee
            </a>

        </aside>

        <!-- Main Content -->
        <main class="dashboard-content">

            <h1>Delete Employee</h1>

            <p class="dashboard-subtitle">
                Remove an employee record from the service center.
            </p>

            <div class="delete-card">

                <div class="delete-icon">!</div>

                <h2>Delete Employee Record</h2>

                <p>
                    Enter the Employee ID of the employee you want to delete.
                    Please verify the ID carefully before proceeding.
                </p>

                <p>
                    <strong>Warning:</strong>
                    This action may permanently remove the employee record
                    and cannot be undone.
                </p>

                <form action="${pageContext.request.contextPath}/admin/delete-employee"
                      method="post"
                      onsubmit="return confirm('Are you sure you want to delete this employee? This action cannot be undone.');">

                    <div class="form-group">

                        <label>Employee ID *</label>

                        <input type="number"
                               name="employeeId"
                               placeholder="Enter Employee ID"
                               min="1"
                               required>

                    </div>

                    <div class="form-actions">

                        <button type="submit" class="delete-button">
                            Delete Employee
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

        </main>

    </div>

</body>
</html>
