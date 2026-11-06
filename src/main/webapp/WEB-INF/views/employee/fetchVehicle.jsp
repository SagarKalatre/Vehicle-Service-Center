
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Fetch Vehicle</title></head>
<body>
    <h2>Fetch Vehicle By ID</h2>

    <form action="${pageContext.request.contextPath}/employee/fetch-vehicle" method="post">
        Vehicle ID:
        <input type="number" name="vehicleId" required><br><br>
        <button type="submit">Search Vehicle</button>
    </form>

    <p>${message}</p>
</body>
</html>
