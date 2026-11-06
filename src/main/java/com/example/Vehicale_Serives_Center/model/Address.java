package com.example.Vehicale_Serives_Center.model;

import org.springframework.context.annotation.Primary;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table (name="Address")

public class Address {

	// 4. Address
	// 	1. Address ID (Primary Key)
	// 	Address Details, City/ Town, Taluka, State, Country, Pincode
    @Id 
    @GeneratedValue (strategy=GenerationType.IDENTITY)
    @Column 
    private int addressId;
    private String addressDetails;
    private String city_town;
    private String taluka;
    private String state;
    private String country;
    private String pincode;

    @ManyToOne 
    @JoinColumn (name="employee_id")
    private Employee employee;

    @ManyToOne
    @JoinColumn (name="admin_id")
    private Admin admin;
}
