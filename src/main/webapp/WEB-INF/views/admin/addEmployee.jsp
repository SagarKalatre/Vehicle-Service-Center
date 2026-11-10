<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>

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

            <a href="${pageContext.request.contextPath}/admin/add-employee"
               class="active">
                Add Employee
            </a>

            <a href="${pageContext.request.contextPath}/admin/employee-list">
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

            <h1>Add New Employee</h1>

            <p class="dashboard-subtitle">
                Register a new employee and create their login account.
            </p>

            <div class="form-card">

                <!-- Personal Information -->
                <h2>Personal Information</h2>

                <p class="dashboard-subtitle">
                    Enter the employee's personal and contact details.
                </p>

                <form action="${pageContext.request.contextPath}/admin/add-employee"
                      method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>First Name *</label>
                            <input type="text"
                                   name="firstname"
                                   placeholder="Enter first name"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Middle Name</label>
                            <input type="text"
                                   name="middlename"
                                   placeholder="Enter middle name">
                        </div>

                        <div class="form-group">
                            <label>Last Name *</label>
                            <input type="text"
                                   name="lastname"
                                   placeholder="Enter last name"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Phone Number 1 *</label>
                            <input type="tel"
                                   name="phone_1"
                                   placeholder="Enter primary phone number"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Phone Number 2</label>
                            <input type="tel"
                                   name="phone_2"
                                   placeholder="Enter alternate phone number">
                        </div>

                        <div class="form-group">
                            <label>Email Address *</label>
                            <input type="email"
                                   name="emailId"
                                   placeholder="Enter email address"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Date of Birth *</label>
                            <input type="date"
                                   name="DOB"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Gender *</label>
                            <select name="gender" required>
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Date of Joining *</label>
                            <input type="date"
                                   name="dateOfJoin"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Date of Leaving</label>
                            <input type="date"
                                   name="dateOfLeft">
                        </div>

                        <div class="form-group">
                            <label>Employee Type *</label>
                            <input type="text"
                                   name="employeeType"
                                   placeholder="Enter employee type"
                                   required>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <!-- Login Information -->
                    <h2>Login Information</h2>

                    <p class="dashboard-subtitle">
                        Create login credentials for the new employee.
                    </p>

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Username *</label>
                            <input type="text"
                                   name="login.username"
                                   placeholder="Create username"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Password *</label>
                            <input type="password"
                                   name="login.password"
                                   placeholder="Create password"
                                   required>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <!-- Form Actions -->
                    <div class="form-actions">

                        <button type="submit">
                            Add Employee
                        </button>

                        <a href="${pageContext.request.contextPath}/admin/dashboard"
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
