
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Update Vehicle</title></head>
<body>
    <h2>Update Vehicle</h2>

    <form action="${pageContext.request.contextPath}/employee/update-vehicle" method="post">
        Vehicle ID:
        <input type="number" name="vehicleId" value="${vehicle.vehicleId}" readonly><br><br>

        Vehicle Number:
        <input type="number" name="vehicleNumber" value="${vehicle.vehicleNumber}" required><br><br>

        Vehicle Type:
        <input type="text" name="vehicleType" value="${vehicle.vehicleType}" required><br><br>

        Customer ID:
        <input type="number" name="customer.customerId" value="${vehicle.customer.customerId}" required><br><br>

        <button type="submit">Update Vehicle</button>
    </form>
</body>
</html>
