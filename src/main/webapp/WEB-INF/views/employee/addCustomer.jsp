
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Customer</title>
</head>
<body>

    <h2>Add Customer Details</h2>

    <form action="${pageContext.request.contextPath}/employee/add-customer"
          method="post">

        First Name:
        <input type="text" name="firstname" required>
        <br><br>

        Middle Name:
        <input type="text" name="middlename">
        <br><br>

        Last Name:
        <input type="text" name="lastname" required>
        <br><br>

        Phone 1:
        <input type="text" name="phone_1" required>
        <br><br>

        Phone 2:
        <input type="text" name="phone_2">
        <br><br>

        Email:
        <input type="email" name="emailId">
        <br><br>

        Date of Birth:
        <input type="date" name="DOB">
        <br><br>

        Gender:
        <select name="gender">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>
        <br><br>

        <button type="submit">Add Customer</button>

    </form>

</body>
</html>
