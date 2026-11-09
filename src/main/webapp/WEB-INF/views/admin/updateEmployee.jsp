<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>

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

            <h1>Update Employee</h1>

            <p class="dashboard-subtitle">
                Update the employee's personal information.
            </p>

            <div class="form-card">

                <h2>Employee Information</h2>

                <form action="${pageContext.request.contextPath}/admin/update-employee"
                      method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Employee ID</label>
                            <input type="number" name="employeeId"
                                   value="${employee.employeeId}" readonly>
                        </div>

                        <div class="form-group">
                            <label>First Name *</label>
                            <input type="text" name="firstname"
                                   value="${employee.firstname}" required>
                        </div>

                        <div class="form-group">
                            <label>Middle Name</label>
                            <input type="text" name="middlename"
                                   value="${employee.middlename}">
                        </div>

                        <div class="form-group">
                            <label>Last Name *</label>
                            <input type="text" name="lastname"
                                   value="${employee.lastname}" required>
                        </div>

                        <div class="form-group">
                            <label>Phone 1</label>
                            <input type="text" name="phone_1"
                                   value="${employee.phone_1}">
                        </div>

                        <div class="form-group">
                            <label>Phone 2</label>
                            <input type="text" name="phone_2"
                                   value="${employee.phone_2}">
                        </div>

                        <div class="form-group">
                            <label>Email Address</label>
                            <input type="email" name="emailId"
                                   value="${employee.emailId}">
                        </div>

                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="date" name="DOB"
                                   value="${employee.DOB}">
                        </div>

                        <div class="form-group">
                            <label>Gender</label>

                            <select name="gender">
                                <option value="Male"
                                    ${employee.gender == 'Male' ? 'selected' : ''}>
                                    Male
                                </option>

                                <option value="Female"
                                    ${employee.gender == 'Female' ? 'selected' : ''}>
                                    Female
                                </option>

                                <option value="Other"
                                    ${employee.gender == 'Other' ? 'selected' : ''}>
                                    Other
                                </option>
                            </select>
                        </div>

                    </div>

                    <div class="form-actions">

                        <button type="submit">
                            Update Employee
                        </button>

                        <a href="${pageContext.request.contextPath}/admin/employee-list"
                           class="cancel-btn">
                            Cancel
                        </a>

                    </div>

                </form>

            </div>

        </main>

    </div>

</body>
</html>
