<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<div style="display: flex; justify-content: space-between; align-items: center; padding: 15px; background-color: #222; color: white;">

    <h3>Vehicle Service Center</h3>

    <div>
        Welcome, ${sessionScope.username}

        <a href="${pageContext.request.contextPath}/logout"
           style="margin-left: 20px; color: white;">
            Logout
        </a>
    </div>

</div>
