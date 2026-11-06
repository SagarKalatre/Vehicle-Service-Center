package com.example.Vehicale_Serives_Center.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table (name="Admin")

public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int customerId;
    private String firstname;
    private String middlename;
    private String lastname;
    private String phone_1;
    private String phone_2;
    private String emailId;
    private String DOB;
    private String gender;
    
    @OneToOne 
    @JoinColumn (name = "admin_id", unique=true)
    private Login login;

    @OneToMany (mappedBy="admin")
    private List<Address> address;
}

