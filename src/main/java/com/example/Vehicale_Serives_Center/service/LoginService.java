package com.example.Vehicale_Serives_Center.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.LoginRepository;
import com.example.Vehicale_Serives_Center.model.Login;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class LoginService {

    @Autowired
    private LoginRepository loginRepository;

    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public Optional<Login> validateLogin(String username, String password) {

        Optional<Login> login = loginRepository.findByUsername(username);

        if (login.isPresent()) {

            Login user = login.get();
            String storedPassword = user.getPassword();

            // Check existing plain-text password and migrate it to BCrypt
            if (storedPassword.equals(password)) {

                user.setPassword(passwordEncoder.encode(password));
                loginRepository.save(user);

                return Optional.of(user);
            }

            // Check BCrypt password
            if (passwordEncoder.matches(password, storedPassword)) {
                return Optional.of(user);
            }
        }

        return Optional.empty();
    }

    public String encryptPassword(String password) {
        return passwordEncoder.encode(password);
    }
}