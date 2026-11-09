package com.example.Vehicale_Serives_Center.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.AdminRepository;
import com.example.Vehicale_Serives_Center.dao.LoginRepository;
import com.example.Vehicale_Serives_Center.model.Admin;
import com.example.Vehicale_Serives_Center.model.Login;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private LoginService loginService;

    public boolean isAdminRegistered() {
        return adminRepository.count() > 0;
    }

    public Admin registerFirstAdmin(Admin admin) {

        // Only the first Admin can register publicly
        if (isAdminRegistered()) {
            throw new IllegalArgumentException(
                    "Admin registration is already closed!");
        }

        Login login = admin.getLogin();

        if (login == null) {
            throw new IllegalArgumentException(
                    "Login information is required!");
        }

        // Check duplicate username
        if (loginRepository.findByUsername(login.getUsername()).isPresent()) {
            throw new IllegalArgumentException(
                    "Username already exists!");
        }

        // Set Admin role
        login.setLoginType("Admin");

        // Encrypt password
        login.setPassword(loginService.encryptPassword(login.getPassword()));

        loginRepository.save(login);

        admin.setLogin(login);

        return adminRepository.save(admin);
    }
}