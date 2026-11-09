package com.example.Vehicale_Serives_Center.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Vehicale_Serives_Center.model.Admin;
import com.example.Vehicale_Serives_Center.model.Employee;
import com.example.Vehicale_Serives_Center.service.AdminService;
import com.example.Vehicale_Serives_Center.service.EmployeeService;

@Controller
public class AccountController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private EmployeeService employeeService;

    // Choose Account Type
    @GetMapping("/account-type")
    public String accountType(Model model) {

        model.addAttribute(
                "adminRegistrationAvailable",
                !adminService.isAdminRegistered());

        return "accountType";
    }

    // Admin Registration Page
    @GetMapping("/register/admin")
    public String adminRegistration(Model model) {

        if (adminService.isAdminRegistered()) {
            model.addAttribute(
                    "message",
                    "Admin registration is already closed!");

            model.addAttribute("adminRegistrationAvailable", false);

            return "accountType";
        }

        model.addAttribute("admin", new Admin());

        return "adminRegistration";
    }

    // Save First Admin
    @PostMapping("/register/admin")
    public String saveAdmin(@ModelAttribute Admin admin, Model model) {

        try {

            adminService.registerFirstAdmin(admin);

            model.addAttribute(
                    "message",
                    "Admin account created successfully! Please login.");

            return "login";

        } catch (IllegalArgumentException e) {

            model.addAttribute("message", e.getMessage());
            return "adminRegistration";
        }
    }

    // Employee Registration Page
    @GetMapping("/register/employee")
    public String employeeRegistration(Model model) {

        model.addAttribute("employee", new Employee());

        return "employeeRegistration";
    }

    // Save Employee
    @PostMapping("/register/employee")
    public String saveEmployee(
            @ModelAttribute Employee employee,
            Model model) {

        try {

            employeeService.addEmployee(employee);

            model.addAttribute(
                    "message",
                    "Employee account created successfully! Please login.");

            return "login";

        } catch (IllegalArgumentException e) {

            model.addAttribute("message", e.getMessage());
            return "employeeRegistration";
        }
    }
}