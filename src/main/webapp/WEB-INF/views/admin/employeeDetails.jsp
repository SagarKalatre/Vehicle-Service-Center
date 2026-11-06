<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
</head>
<body>

    <h2>Employee Details</h2>

    Employee ID: ${employee.employeeId}<br><br>
    First Name: ${employee.firstname}<br><br>
    Middle Name: ${employee.middlename}<br><br>
    Last Name: ${employee.lastname}<br><br>
    Phone 1: ${employee.phone_1}<br><br>
    Phone 2: ${employee.phone_2}<br><br>
    Email: ${employee.emailId}<br><br>
    DOB: ${employee.DOB}<br><br>
    Gender: ${employee.gender}<br><br>

    <a href="${pageContext.request.contextPath}/admin/update-employee?employeeId=${employee.employeeId}">
        Update Employee
    </a>

</body>
</html>