package com.example.Vehicale_Serives_Center.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Vehicale_Serives_Center.model.Login;

public interface LoginRepository extends JpaRepository<Login, Integer> {
    Optional<Login> findByUsernameAndPassword(String username, String password);
}
