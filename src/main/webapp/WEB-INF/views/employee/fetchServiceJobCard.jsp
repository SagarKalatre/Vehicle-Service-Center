<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Service Job Card</title>
</head>
<body>

    <h1>Fetch Service Job Card</h1>

    <form action="/employee/fetch-service-job-card" method="post">

        <label>Service Job Card ID:</label>
        <input type="number" name="serviceJobCardId" required>

        <button type="submit">Fetch</button>

    </form>

    <br>
    <a href="/employee/dashboard">Back to Dashboard</a>

</body>
</html>
