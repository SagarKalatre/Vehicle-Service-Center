
package com.example.Vehicale_Serives_Center.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.VehicleRepository;
import com.example.Vehicale_Serives_Center.model.Vehicle;

@Service
public class VehicleService {

    @Autowired
    public VehicleRepository vehicleRepository;

    public void addVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
    }

    public Optional<Vehicle> getVehicleById(int vehicleId) {
        return vehicleRepository.findById(vehicleId);
    }

    public void updateVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
    }
}
