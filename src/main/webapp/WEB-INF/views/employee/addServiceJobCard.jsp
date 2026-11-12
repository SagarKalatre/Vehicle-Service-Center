
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Service Job Card</title>

        <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/style.css">

    </head>
    <body>

        <h1>Add Service Job Card</h1>

        <form action="${pageContext.request.contextPath}/employee/add-service"
        method="post">

        <label>Vehicle ID:</label>
        <input type="number" name="vehicle.vehicleId" required><br><br>

        <label>Service Start Date:</label>
        <input type="date" name="serviceStartDate" required><br><br>

        <label>Service End Date:</label>
        <input type="date" name="serviceEndDate"><br><br>

        <label>Contact Number:</label>
        <input type="text" name="contactNumber" required><br><br>

        <button type="submit">Add Service Job Card</button>

    </form>

    <br>
    <a href="${pageContext.request.contextPath}/employee/dashboard">
        Back to Dashboard
    </a>

</body>
</html>
