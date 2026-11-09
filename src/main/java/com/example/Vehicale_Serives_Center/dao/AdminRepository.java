package com.example.Vehicale_Serives_Center.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Vehicale_Serives_Center.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {

    // ADDED: Find Admin using registered email
    Optional<Admin> findByEmailId(String emailId);

}