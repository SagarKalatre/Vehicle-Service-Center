package com.example.Vehicale_Serives_Center.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.LoginRepository;
import com.example.Vehicale_Serives_Center.model.Login;

@Service 
public class LoginService {
    
    @Autowired 
    private LoginRepository loginRepository;

    public Optional<Login> validateLogin(String username, String password) {
        return loginRepository.findByUsernameAndPassword(username, password);
    }
}
