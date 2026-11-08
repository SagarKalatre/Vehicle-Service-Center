
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Employee</title>
    </head>
    <body>

        <h2>Add Employee Details</h2>

        <form action="${pageContext.request.contextPath}/admin/add-employee" method="post">

            <label>First Name:</label>
            <input type="text" name="firstname" required>
            <br><br>

            <label>Middle Name:</label>
            <input type="text" name="middlename">
            <br><br>

            <label>Last Name:</label>
            <input type="text" name="lastname" required>
            <br><br>

            <label>Phone 1:</label>
            <input type="text" name="phone_1" required>
            <br><br>

            <label>Phone 2:</label>
            <input type="text" name="phone_2">
            <br><br>

            <label>Email ID:</label>
            <input type="email" name="emailId" required>
            <br><br>

            <label>Date of Birth:</label>
            <input type="date" name="DOB">
            <br><br>

            <label>Gender:</label>
            <select name="gender">
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            <br><br>

            <label>Username:</label>
            <input type="text" name="login.username" required>
            <br><br>

            <label>Password:</label>
            <input type="password" name="login.password" minlength="8" required>
            <br><br>

            <%-- <label>Date of Join:</label>
            <input type="date" name="dateOfJoin">
            <br><br>
            
            <label>Date of Left:</label>
            <input type="date" name="dateOfLeft">
            <br><br>
            
            <label>Employee Type:</label>
            <input type="text" name="employeeType">
            <br><br> --%>

            <button type="submit">Add Employee</button>

        </form>

    </body>
</html>
