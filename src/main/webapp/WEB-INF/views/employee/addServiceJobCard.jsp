<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Service Job Card</title>
</head>
<body>

    <h1>Add Service Job Card</h1>

    <form action="/employee/add-service-job-card" method="post">

        <label>Customer ID:</label>
        <input type="number" name="customerId" required><br><br>

        <label>Vehicle ID:</label>
        <input type="number" name="vehicleId" required><br><br>

        <label>Service Type:</label>
        <input type="text" name="serviceType" required><br><br>

        <label>Problem Description:</label>
        <textarea name="problemDescription"></textarea><br><br>

        <label>Service Date:</label>
        <input type="date" name="serviceDate"><br><br>

        <label>Status:</label>
        <input type="text" name="status"><br><br>

        <label>Estimated Cost:</label>
        <input type="number" step="0.01" name="estimatedCost"><br><br>

        <button type="submit">Add Service Job Card</button>

    </form>

    <br>
    <a href="/employee/dashboard">Back to Dashboard</a>

</body>
</html>
