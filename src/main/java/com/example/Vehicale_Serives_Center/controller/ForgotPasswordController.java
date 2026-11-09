package com.example.Vehicale_Serives_Center.controller;

import java.security.SecureRandom;
import java.time.Instant;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Vehicale_Serives_Center.dao.AdminRepository;
import com.example.Vehicale_Serives_Center.dao.EmployeeRepository;
import com.example.Vehicale_Serives_Center.model.Admin;
import com.example.Vehicale_Serives_Center.model.Employee;
import com.example.Vehicale_Serives_Center.service.EmailService;
import com.example.Vehicale_Serives_Center.service.LoginService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ForgotPasswordController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private LoginService loginService;

    private final SecureRandom random = new SecureRandom();

    // Forgot Password Page
    @GetMapping("/forgotPassword")
    public String forgotPassword() {
        return "forgotPassword";
    }

    // Send OTP
    @PostMapping("/sendOTP")
    public String sendOTP(
            @RequestParam String emailId,
            HttpSession session,
            Model model) {

        String email = emailId.trim().toLowerCase();

        Optional<Admin> admin = adminRepository.findByEmailId(email);

        Optional<Employee> employee = employeeRepository.findByEmailId(email);

        if (admin.isEmpty() && employee.isEmpty()) {
            model.addAttribute(
                    "message",
                    "No account found with this email address!");

            return "forgotPassword";
        }

        // ADDED: Prevent email linked to multiple accounts
        if (admin.isPresent() && employee.isPresent()) {

            model.addAttribute(
                    "message",
                    "This email is linked to multiple accounts. Please contact the administrator.");

            return "forgotPassword";
        }

        // ADDED: Store the correct Login ID
        if (admin.isPresent()) {

            session.setAttribute(
                    "resetLoginId",
                    admin.get().getLogin().getLoginId());

        } else {

            session.setAttribute(
                    "resetLoginId",
                    employee.get().getLogin().getLoginId());
        }

        // Generate 6-digit OTP
        String otp = String.format("%06d", random.nextInt(1000000));

        try {

            emailService.sendOTP(email, otp);

            // ADDED: Store the correct Login ID after successful email
            if (admin.isPresent()) {
                session.setAttribute(
                        "resetLoginId",
                        admin.get().getLogin().getLoginId());
            } else {
                session.setAttribute(
                        "resetLoginId",
                        employee.get().getLogin().getLoginId());
            }

            // Store OTP details in session
            session.setAttribute("resetEmail", email);
            session.setAttribute("resetOTP", otp);
            session.setAttribute(
                    "otpExpiry",
                    Instant.now().plusSeconds(300).toEpochMilli());

            session.setAttribute("otpAttempts", 0);
            session.setAttribute("otpVerified", false);

            return "verifyOTP";

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute(
                    "message",
                    "Unable to send OTP. Please try again later.");

            return "forgotPassword";
        }
    }

    // Verify OTP
    @PostMapping("/verifyOTP")
    public String verifyOTP(
            @RequestParam String otp,
            HttpSession session,
            Model model) {

        String storedOTP = (String) session.getAttribute("resetOTP");
        Long expiry = (Long) session.getAttribute("otpExpiry");

        if (storedOTP == null || expiry == null) {
            model.addAttribute(
                    "message",
                    "Please request a new OTP!");

            return "forgotPassword";
        }

        if (Instant.now().toEpochMilli() > expiry) {

            clearOTPSession(session);

            model.addAttribute(
                    "message",
                    "OTP expired! Please request a new OTP.");

            return "forgotPassword";
        }

        Integer attempts = (Integer) session.getAttribute("otpAttempts");

        if (attempts == null) {
            attempts = 0;
        }

        if (attempts >= 5) {

            clearOTPSession(session);

            model.addAttribute(
                    "message",
                    "Too many incorrect attempts. Request a new OTP.");

            return "forgotPassword";
        }

        if (!storedOTP.equals(otp.trim())) {

            attempts++;

            session.setAttribute("otpAttempts", attempts);

            model.addAttribute(
                    "message",
                    "Invalid OTP! Attempts remaining: " + (5 - attempts));

            return "verifyOTP";
        }

        session.setAttribute("otpVerified", true);

        return "resetPassword";
    }

    // Clear OTP Session
    private void clearOTPSession(HttpSession session) {

        session.removeAttribute("resetEmail");
        session.removeAttribute("resetOTP");
        session.removeAttribute("otpExpiry");
        session.removeAttribute("otpAttempts");
        session.removeAttribute("otpVerified");
        session.removeAttribute("resetLoginId"); 
    }

    // Reset Password
    @PostMapping("/resetPassword")
    public String resetPassword(
            @RequestParam String newPassword,
            @RequestParam String confirmPassword,
            HttpSession session,
            Model model) {

        Boolean verified = (Boolean) session.getAttribute("otpVerified");
        Integer loginId = (Integer) session.getAttribute("resetLoginId");

        if (!Boolean.TRUE.equals(verified) || loginId == null) {
            model.addAttribute("message", "Please verify your OTP first!");
            return "forgotPassword";
        }

        if (newPassword.length() < 8) {
            model.addAttribute("message", "Password must contain at least 8 characters!");
            return "resetPassword";
        }

        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("message", "Passwords do not match!");
            return "resetPassword";
        }

        boolean updated = loginService.resetPassword(loginId, newPassword);

        if (updated) {
            clearOTPSession(session);
            model.addAttribute("message", "Password reset successfully! Please login.");
            return "login";
        }

        model.addAttribute("message", "Unable to reset password!");
        return "resetPassword";
    }
}