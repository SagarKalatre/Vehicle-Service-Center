<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vehicle Service Center Login</title>

        <link rel="stylesheet"
        href="${pageContext.request.contextPath}/login.css">
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #000000, #1c1c1c, #333333);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 30px 15px;
        }
        
        .login-box {
            width: 100%;
            max-width: 380px;
            padding: 35px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 15px 40px rgba(255, 255, 255, 0.08);
        }
        
        h1 {
            text-align: center;
            color: #111;
            margin-bottom: 10px;
        }
        
        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 25px;
        }
        
        label {
            display: block;
            margin: 15px 0 7px;
            font-weight: bold;
            color: #333;
        }
        
        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 7px;
            outline: none;
            font-size: 14px;
        }
        
        input:focus {
            border-color: #111;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
        
        button {
            width: 100%;
            padding: 13px;
            margin-top: 22px;
            border: none;
            border-radius: 7px;
            background: #111;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        
        button:hover {
            background: #444;
        }
        
        .forgot {
            text-align: right;
            margin-top: 12px;
        }
        
        .register-link {
            text-align: center;
            margin-top: 22px;
            font-size: 14px;
        }
        
        a {
            color: #111;
            font-weight: bold;
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
        
        #div_1 {
            margin-top: 20px;
            width: 100%;
            max-width: 380px;
            padding: 18px;
            background: #252525;
            color: white;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }
        
        #div_1 p {
            line-height: 1.8;
            font-size: 15px;
        }
    </style>
    <body>

        <div class="login-box">

            <h1>Welcome Back!</h1>
            <p class="subtitle">Vehicle Service Center Login Portal</p>

            <form action="${pageContext.request.contextPath}/login" method="post">

                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <br><br>

                <a href="${pageContext.request.contextPath}/forgotPassword"
                class="forgot-password">Forgot Password?</a>
                <c:if test="${not empty message}">
                    <p style="color: red;">${message}</p>
                </c:if>

                <button type="submit">Login</button>

            </form>

            <p class="register-link">
                New student?
                <a href="${pageContext.request.contextPath}/studentRegistration">
                    Create Account
                </a>
            </p>

        </div>

        <%-- <div id="div_1">
        
        <p>
        Your Name is: ${name}
        <br>
        Your Age is: ${age}
        </p>
        
        <br>
        
        <p>
        <c:forEach var="student_name" items="${studentName}">
        Student Name: <c:out value="${student_name}"/><br>
        </c:forEach>
        </p>
        
        </div> --%>

    </body>
</html>
