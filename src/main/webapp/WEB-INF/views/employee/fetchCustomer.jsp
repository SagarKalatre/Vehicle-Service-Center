
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Fetch Customer</title></head>
<body>
    <h2>Fetch Customer By ID</h2>

    <form action="${pageContext.request.contextPath}/employee/fetch-customer" method="post">
        Customer ID:
        <input type="number" name="customerId" required><br><br>
        <button type="submit">Search Customer</button>
    </form>

    <p>${message}</p>
</body>
</html>
