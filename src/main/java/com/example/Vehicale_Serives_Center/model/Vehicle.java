package com.example.Vehicale_Serives_Center.model;

import java.security.Provider;
import java.util.List;

import org.springframework.context.annotation.Primary;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "vehicle")
@Inheritance(strategy = InheritanceType.JOINED)
public class Vehicle {
    // 6. Vehicle
    // 1. Vehicle ID (Primary Key)
    // Vehicle Number (unique), Vehicle Type
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int vehicleId;
    @Column(unique = true)
    private long vehicleNumber;
    private String vehicleType;

    @ManyToOne 
    @JoinColumn (name="customer_id")
    private Customer customer;

    @OneToMany (mappedBy="vehicle")
    private List<ServiceJobCard> serviceJobCard;
}
