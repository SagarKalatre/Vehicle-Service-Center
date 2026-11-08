<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
</head>
<body>

    <h2>All Employees</h2>

    <table border="1" cellpadding="10">

        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Username</th>
            <th>Action</th>
        </tr>

        <c:forEach var="employee" items="${employees}">

            <tr>
                <td>${employee.employeeId}</td>

                <td>
                    ${employee.firstname} ${employee.lastname}
                </td>

                <td>${employee.emailId}</td>

                <td>${employee.login.username}</td>

                <td>
                    <a href="${pageContext.request.contextPath}/admin/employee-portal?employeeId=${employee.employeeId}">
                        Open Employee Portal
                    </a>
                </td>
            </tr>

        </c:forEach>

    </table>

    <br>

    <a href="${pageContext.request.contextPath}/admin/dashboard">
        Back to Admin Dashboard
    </a>

</body>
</html>