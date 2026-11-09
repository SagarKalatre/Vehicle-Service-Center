
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Customer</title>

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

            <h1>Update Customer</h1>

            <p class="dashboard-subtitle">
                Modify the customer's personal information.
            </p>

            <div class="form-card">

                <form action="${pageContext.request.contextPath}/employee/update-customer"
                      method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Customer ID</label>
                            <input type="number"
                                   name="customerId"
                                   value="${customer.customerId}"
                                   readonly>
                        </div>

                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text"
                                   name="firstname"
                                   value="${customer.firstname}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Middle Name</label>
                            <input type="text"
                                   name="middlename"
                                   value="${customer.middlename}">
                        </div>

                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text"
                                   name="lastname"
                                   value="${customer.lastname}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Phone Number 1</label>
                            <input type="text"
                                   name="phone_1"
                                   value="${customer.phone_1}">
                        </div>

                        <div class="form-group">
                            <label>Phone Number 2</label>
                            <input type="text"
                                   name="phone_2"
                                   value="${customer.phone_2}">
                        </div>

                        <div class="form-group">
                            <label>Email Address</label>
                            <input type="email"
                                   name="emailId"
                                   value="${customer.emailId}">
                        </div>

                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="date"
                                   name="DOB"
                                   value="${customer.DOB}">
                        </div>

                        <div class="form-group">
                            <label>Gender</label>

                            <select name="gender">

                                <option value="">Select Gender</option>

                                <option value="Male"
                                    ${customer.gender == 'Male' ? 'selected' : ''}>
                                    Male
                                </option>

                                <option value="Female"
                                    ${customer.gender == 'Female' ? 'selected' : ''}>
                                    Female
                                </option>

                                <option value="Other"
                                    ${customer.gender == 'Other' ? 'selected' : ''}>
                                    Other
                                </option>

                            </select>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <div class="form-actions">

                        <button type="submit">
                            Update Customer
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/fetch-customer"
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
