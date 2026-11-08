
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Fetch Service</title></head>
<body>
    <h2>Fetch Service By ID</h2>

    <form action="${pageContext.request.contextPath}/employee/fetch-service" method="post">
        Service Job Card ID:
        <input type="number" name="serviceJobCardId" required><br><br>
        <button type="submit">Search Service</button>
    </form>

    <p>${message}</p>
</body>
</html>
