<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Employee Dashboard</title>
    </head>
    <body>

        <h1>Welcome to Employee Dashboard</h1>

        <h3>Welcome, ${sessionScope.username}</h3>

        <h2>Employee Options</h2>

        <a href="/employee/add-customer">Add Customer</a><br>
        <a href="/employee/fetch-customer">Fetch Customer</a><br>
        <a href="/employee/add-vehicle">Add Vehicle</a><br>
        <a href="/employee/fetch-vehicle">Fetch Vehicle</a><br>
        <a href="/employee/add-service">Add Service Job Card</a><br>
        <a href="/employee/fetch-service">Fetch Service Job Card</a>
        <form action="/logout" method="get">
            <button type="submit">Logout</button>
        </form>

    </body>
</html>