
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Add Service</title></head>
<body>
    <h2>Add Service Details</h2>

    <form action="${pageContext.request.contextPath}/employee/add-service" method="post">
        Service Start Date:
        <input type="date" name="serviceStartDate" required><br><br>

        Service End Date:
        <input type="date" name="serviceEndDate"><br><br>

        Contact Number:
        <input type="text" name="contactNumber" required><br><br>

        Vehicle ID:
        <input type="number" name="vehicle.vehicleId" required><br><br>

        <button type="submit">Add Service</button>
    </form>
</body>
</html>
