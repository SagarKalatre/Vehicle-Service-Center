<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
</head>
<body>

    <h2>Update Employee Details</h2>

    <form action="${pageContext.request.contextPath}/admin/update-employee"
          method="post">

        Employee ID:
        <input type="number" name="employeeId"
               value="${employee.employeeId}" readonly>
        <br><br>

        First Name:
        <input type="text" name="firstname"
               value="${employee.firstname}" required>
        <br><br>

        Middle Name:
        <input type="text" name="middlename"
               value="${employee.middlename}">
        <br><br>

        Last Name:
        <input type="text" name="lastname"
               value="${employee.lastname}" required>
        <br><br>

        Phone 1:
        <input type="text" name="phone_1"
               value="${employee.phone_1}">
        <br><br>

        Phone 2:
        <input type="text" name="phone_2"
               value="${employee.phone_2}">
        <br><br>

        Email:
        <input type="email" name="emailId"
               value="${employee.emailId}">
        <br><br>

        DOB:
        <input type="date" name="DOB"
               value="${employee.DOB}">
        <br><br>

        Gender:
        <select name="gender">
            <option value="Male" ${employee.gender == 'Male' ? 'selected' : ''}>Male</option>
            <option value="Female" ${employee.gender == 'Female' ? 'selected' : ''}>Female</option>
            <option value="Other" ${employee.gender == 'Other' ? 'selected' : ''}>Other</option>
        </select>
        <br><br>

        <button type="submit">Update Employee</button>

    </form>

</body>
</html>