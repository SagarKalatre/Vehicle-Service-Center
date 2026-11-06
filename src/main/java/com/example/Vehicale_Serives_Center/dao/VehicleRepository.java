package com.example.Vehicale_Serives_Center.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.Vehicale_Serives_Center.model.Vehicle;

public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

}