<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fetch Employee</title>
</head>
<body>

    <h2>Fetch Employee By ID</h2>

    <form action="${pageContext.request.contextPath}/admin/fetch-employee"
          method="post">

        Employee ID:
        <input type="number" name="employeeId" required>
        <br><br>

        <button type="submit">Search Employee</button>

    </form>

    <p>${message}</p>

</body>
</html>