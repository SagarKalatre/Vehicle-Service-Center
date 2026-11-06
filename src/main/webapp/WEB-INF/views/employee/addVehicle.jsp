
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Add Vehicle</title></head>
<body>
    <h2>Add Vehicle Details</h2>

    <form action="${pageContext.request.contextPath}/employee/add-vehicle" method="post">
        Vehicle Number:
        <input type="number" name="vehicleNumber" required><br><br>

        Vehicle Type:
        <input type="text" name="vehicleType" required><br><br>

        Customer ID:
        <input type="number" name="customer.customerId" required><br><br>

        <button type="submit">Add Vehicle</button>
    </form>
</body>
</html>
