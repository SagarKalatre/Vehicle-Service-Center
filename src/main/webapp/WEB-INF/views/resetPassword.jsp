<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="login-page">

    <div class="login-container">

        <div class="login-brand">
            <h2>Vehicle Service Center</h2>
            <p>Secure Your Account</p>
        </div>

        <h2>Reset Password</h2>

        <p>Create your new password.</p>

        <c:if test="${not empty message}">
            <div class="login-error">${message}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/resetPassword"
              method="post">

            <label>New Password</label>

            <input type="password"
                   name="newPassword"
                   placeholder="Enter new password"
                   minlength="8"
                   required>

            <label>Confirm Password</label>

            <input type="password"
                   name="confirmPassword"
                   placeholder="Confirm new password"
                   minlength="8"
                   required>

            <button type="submit" class="login-submit-btn">
                Reset Password →
            </button>

        </form>

    </div>

</body>
</html>