<%@ page language="java" contenttype="text/html
charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <title>Employee Added Auccessfully</title>
</head> 
<body>
    <h2>Employee Added Successfully!</h2>

    <hr>

    <h3>Employee Detatils</h3>

    <p>Employee ID : ${employee.employeeId}</p>
    <p>Name : ${employee.firstname} ${employee.lastname}</p>
    <p>Email : ${employee.emailId}</p>

    <hr>

    <h3>What do you like to do?</h3>

    <a href="${pageContext.request.contextPath}/admin/employee-protal?employeeId=${employee.employeeId}">
        <button type="button">Open Employee Portal</button>
    </a>
    <br><br>
    <a href="${pageContext.request.contextPath}/admin/dashboard">
        <button type="button">Back to Admin Home</button>
    </a>

</body>
</html>