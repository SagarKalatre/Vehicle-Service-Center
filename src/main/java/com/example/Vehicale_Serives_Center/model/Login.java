package com.example.Vehicale_Serives_Center.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table (name="Login")
public class Login {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column 
    private int LoginId;
    private String username;
    private String password;
    private String loginType;

    @OneToOne (mappedBy="login")
    private Employee employee;

    @OneToOne (mappedBy="login")
    private Admin admin;
}
