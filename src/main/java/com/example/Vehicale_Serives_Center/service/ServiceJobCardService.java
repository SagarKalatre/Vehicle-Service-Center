
package com.example.Vehicale_Serives_Center.service;

import java.util.List;
import java.util.Optional;

import org.jspecify.annotations.Nullable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.ServiceJobCardRepository;
import com.example.Vehicale_Serives_Center.model.ServiceJobCard;

@Service
public class ServiceJobCardService {

    @Autowired
    public ServiceJobCardRepository serviceJobCardRepository;

    public void addService(ServiceJobCard service) {
        serviceJobCardRepository.save(service);
    }

    public Optional<ServiceJobCard> getServiceById(int serviceJobCardId) {
        return serviceJobCardRepository.findById(serviceJobCardId);
    }

    public void updateService(ServiceJobCard service) {
        serviceJobCardRepository.save(service);
    }

    public List<ServiceJobCard> getAllServices() {
        // TODO Auto-generated method stub
        // throw new UnsupportedOperationException("Unimplemented method 'getAllServices'");
        return serviceJobCardRepository.findAll();
    }
}
