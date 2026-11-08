
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Customer Details</title></head>
<body>
    <h2>Customer Details</h2>

    Customer ID: ${customer.customerId}<br><br>
    First Name: ${customer.firstname}<br><br>
    Middle Name: ${customer.middlename}<br><br>
    Last Name: ${customer.lastname}<br><br>
    Phone 1: ${customer.phone_1}<br><br>
    Phone 2: ${customer.phone_2}<br><br>
    Email: ${customer.emailId}<br><br>
    DOB: ${customer.DOB}<br><br>
    Gender: ${customer.gender}<br><br>

    <a href="${pageContext.request.contextPath}/employee/update-customer?customerId=${customer.customerId}">
        Update Customer
    </a>
</body>
</html>
