<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
</head>
<body>

    <h2>Delete Employee</h2>

    <form action="${pageContext.request.contextPath}/admin/delete-employee"
          method="post">

        Employee ID:
        <input type="number" name="employeeId" required>
        <br><br>

        <button type="submit">Delete Employee</button>

    </form>

    <p>${message}</p>

</body>
</html>