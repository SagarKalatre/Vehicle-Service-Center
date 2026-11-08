
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Update Customer</title></head>
<body>
    <h2>Update Customer</h2>

    <form action="${pageContext.request.contextPath}/employee/update-customer" method="post">
        Customer ID:
        <input type="number" name="customerId" value="${customer.customerId}" readonly><br><br>

        First Name: <input type="text" name="firstname" value="${customer.firstname}" required><br><br>
        Middle Name: <input type="text" name="middlename" value="${customer.middlename}"><br><br>
        Last Name: <input type="text" name="lastname" value="${customer.lastname}" required><br><br>
        Phone 1: <input type="text" name="phone_1" value="${customer.phone_1}"><br><br>
        Phone 2: <input type="text" name="phone_2" value="${customer.phone_2}"><br><br>
        Email: <input type="email" name="emailId" value="${customer.emailId}"><br><br>
        DOB: <input type="date" name="DOB" value="${customer.DOB}"><br><br>

        Gender:
        <select name="gender">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br><br>

        <button type="submit">Update Customer</button>
    </form>
</body>
</html>
