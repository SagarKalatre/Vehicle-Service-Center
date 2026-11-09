
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Vehicle</title>

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

            <a href="${pageContext.request.contextPath}/employee/fetch-customer">
                View Customers
            </a>

            <a href="${pageContext.request.contextPath}/employee/delete-customer">
                Delete Customer
            </a>

            <a href="${pageContext.request.contextPath}/employee/add-vehicle">
                Add Vehicle
            </a>

            <a href="${pageContext.request.contextPath}/employee/fetch-vehicle"
               class="active">
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

            <h1>Update Vehicle</h1>

            <p class="dashboard-subtitle">
                Modify the registered vehicle information.
            </p>

            <div class="form-card">

                <form action="${pageContext.request.contextPath}/employee/update-vehicle"
                      method="post">

                    <div class="form-grid">

                        <div class="form-group">
                            <label>Vehicle ID</label>

                            <input type="number"
                                   name="vehicleId"
                                   value="${vehicle.vehicleId}"
                                   readonly>
                        </div>

                        <div class="form-group">
                            <label>Vehicle Number</label>

                            <input type="number"
                                   name="vehicleNumber"
                                   value="${vehicle.vehicleNumber}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Vehicle Type</label>

                            <input type="text"
                                   name="vehicleType"
                                   value="${vehicle.vehicleType}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Customer ID</label>

                            <input type="number"
                                   name="customer.customerId"
                                   value="${vehicle.customer.customerId}"
                                   required>
                        </div>

                    </div>

                    <div class="form-divider"></div>

                    <div class="form-actions">

                        <button type="submit">
                            Update Vehicle
                        </button>

                        <a href="${pageContext.request.contextPath}/employee/fetch-vehicle"
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
