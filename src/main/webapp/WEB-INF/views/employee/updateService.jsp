
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Update Service</title></head>
<body>
    <h2>Update Service Details</h2>

    <form action="${pageContext.request.contextPath}/employee/update-service" method="post">
        Service ID:
        <input type="number" name="serviceJobCardId" value="${service.serviceJobCardId}" readonly><br><br>

        Service Start Date:
        <input type="date" name="serviceStartDate" value="${service.serviceStartDate}" required><br><br>

        Service End Date:
        <input type="date" name="serviceEndDate" value="${service.serviceEndDate}"><br><br>

        Contact Number:
        <input type="text" name="contactNumber" value="${service.contactNumber}" required><br><br>

        Vehicle ID:
        <input type="number" name="vehicle.vehicleId" value="${service.vehicle.vehicleId}" required><br><br>

        <button type="submit">Update Service</button>
    </form>
</body>
</html>
