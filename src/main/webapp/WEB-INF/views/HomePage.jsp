<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Service Center</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #000, #333);
        color: white;
        text-align: center;
        padding-top: 150px;
    }

    a {
        display: inline-block;
        background: white;
        color: black;
        padding: 12px 30px;
        margin-top: 20px;
        text-decoration: none;
        border-radius: 7px;
        font-weight: bold;
    }
</style>
</head>
<body>

    <h1>Welcome to Vehicle Service Center</h1>
    <p>Manage Customers, Vehicles and Service Records Easily.</p>

    <a href="${pageContext.request.contextPath}/login">Login</a>

</body>
</html>
