package com.example.Vehicale_Serives_Center.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Vehicale_Serives_Center.model.Login;
import com.example.Vehicale_Serives_Center.service.LoginService;

import jakarta.servlet.http.HttpSession;



@Controller 
public class LoginController {
    @Autowired 
    private LoginService loginService;

    @PostMapping ("/login")
    public String login(
            @RequestParam String username,
            @RequestParam String password,
            Model model,
            HttpSession session) {

        Optional<Login> login = loginService.validateLogin(username, password);

        if (login.isPresent()) {
            Login user = login.get();

            session.setAttribute("username", user.getUsername());
            session.setAttribute("password", user.getPassword());

            if ("Admin".equalsIgnoreCase(user.getLoginType())) {
                return "redirect:/admin/dashboard";
            } else if ("Employee".equalsIgnoreCase(user.getLoginType())) {
                return "redirect:/employee/dashboard";
            }
        }

        model.addAttribute("message", "Invalid username and password..!");
        return "/login";
    }

    @GetMapping ("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/logout";
    }
}