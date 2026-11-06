
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Vehicle Details</title></head>
<body>
    <h2>Vehicle Details</h2>

    Vehicle ID: ${vehicle.vehicleId}<br><br>
    Vehicle Number: ${vehicle.vehicleNumber}<br><br>
    Vehicle Type: ${vehicle.vehicleType}<br><br>
    Customer ID: ${vehicle.customer.customerId}<br><br>

    <a href="${pageContext.request.contextPath}/employee/update-vehicle?vehicleId=${vehicle.vehicleId}">
        Update Vehicle
    </a>
</body>
</html>
