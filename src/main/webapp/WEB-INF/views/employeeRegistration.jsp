<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Registration</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="login-page">

    <div class="login-container">

        <div class="login-brand">
            <span class="brand-icon">V</span>
            <h2>Vehicle Service Center</h2>
            <p>Employee Registration</p>
        </div>

        <div class="login-box">

            <h1>Create Employee Account</h1>

            <c:if test="${not empty message}">
                <div class="login-error">${message}</div>
            </c:if>

            <form action="${pageContext.request.contextPath}/register/employee"
                  method="post">

                <label>First Name *</label>
                <input type="text" name="firstname" required>

                <label>Middle Name</label>
                <input type="text" name="middlename">

                <label>Last Name *</label>
                <input type="text" name="lastname" required>

                <label>Phone Number *</label>
                <input type="tel" name="phone_1" required>

                <label>Alternate Phone Number</label>
                <input type="tel" name="phone_2">

                <label>Email Address *</label>
                <input type="email" name="emailId" required>

                <label>Date of Birth *</label>
                <input type="date" name="DOB" required>

                <label>Gender *</label>
                <select name="gender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>

                <hr>

                <h3>Login Information</h3>

                <label>Username *</label>
                <input type="text"
                       name="login.username"
                       required>

                <label>Password *</label>
                <input type="password"
                       name="login.password"
                       minlength="8"
                       required>

                <button type="submit" class="login-submit-btn">
                    Create Employee Account →
                </button>

            </form>

            <br>

            <a href="${pageContext.request.contextPath}/account-type">
                ← Back
            </a>

        </div>

    </div>

</body>
</html>