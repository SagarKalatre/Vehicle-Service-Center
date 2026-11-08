package com.example.Vehicale_Serives_Center.config;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component 
public class RoleInterceptor implements HandlerInterceptor {
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
            Object handler) throws Exception {
    
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("loginType") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return false;
        } 
        String loginType = session.getAttribute("loginType").toString();

        String requestURI = request.getRequestURI().substring(request.getContextPath().length());

        if (requestURI.startsWith("/admin")) {
            if (loginType.equalsIgnoreCase("Admin")) {
                return true;
            }

            response.sendRedirect(request.getContextPath() + "/employee/dashboard");
            return false;
        }

        if (requestURI.startsWith("/employee/")) {
            if (loginType.equalsIgnoreCase("Admin") || loginType.equalsIgnoreCase("Employee")) {
                return true;
            }
            response.sendRedirect(request.getContextPath() + "/login");
            return false;
        }

        return true;
    }
}
