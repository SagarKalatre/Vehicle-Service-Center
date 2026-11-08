
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Employee Dashboard</title>
    </head>
    <body>

        <h1>Welcome to Employee Dashboard</h1>

        <c:choose>

            <c:when test="${not empty sessionScope.adminViewingEmployeeId}">

                <h3>Admin: ${sessionScope.username}</h3>

                <h3>
                    Viewing Employee: ${sessionScope.adminViewingEmployeeName}
                </h3>

                <a href="${pageContext.request.contextPath}/admin/dashboard">
                    Back to Admin Dashboard
                </a>

            </c:when>

            <c:otherwise>

                <h3>Welcome, ${sessionScope.username}</h3>

            </c:otherwise>

        </c:choose>

        <h2>Employee Options</h2>

        <a href="${pageContext.request.contextPath}/employee/add-customer">Add Customer</a><br>

        <a href="${pageContext.request.contextPath}/employee/fetch-customer">Fetch Customer</a><br>

        <a href="${pageContext.request.contextPath}/employee/add-vehicle">Add Vehicle</a><br>

        <a href="${pageContext.request.contextPath}/employee/fetch-vehicle">Fetch Vehicle</a><br>

        <a href="${pageContext.request.contextPath}/employee/add-service">Add Service Job Card</a><br>

        <a href="${pageContext.request.contextPath}/employee/fetch-service">Fetch Service Job Card</a>

        <c:if test="${empty sessionScope.adminViewingEmployeeId}">
            <form action="${pageContext.request.contextPath}/logout" method="get">
                <button type="submit">Logout</button>
            </form>
        </c:if>

    </body>
</html>
