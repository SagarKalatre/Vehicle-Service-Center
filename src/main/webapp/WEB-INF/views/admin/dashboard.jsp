<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin Dashboard</title>
    </head>
    <body>

        <h1>Welcome to Admin Dashboard</h1>

        <h3>Welcome, ${sessionScope.username}</h3>

        <h2>Admin Options</h2>

        <a href="/admin/add-employee">Add Employee</a><br>
        <a href="/admin/fetch-employee">Fetch Employee</a><br>
        <a href="/admin/fetch-employee">Update Employee (Search by ID)</a><br>
        <a href="/admin/delete-employee">Delete Employee</a>

        <form action="/logout" method="get">
            <button type="submit">Logout</button>
        </form>

    </body>
</html>