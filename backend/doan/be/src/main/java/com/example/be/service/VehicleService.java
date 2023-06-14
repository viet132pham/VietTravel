package com.example.be.service;

import com.example.be.entity.Vehicle;

import java.util.List;

public interface VehicleService extends BaseService<Vehicle> {
    List<Vehicle> findVehicleTrending();

    List<Vehicle> findVehicleByLocation(String location);

    Vehicle findVehicleByName(String name);

    List<Vehicle> filterVehicles(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale);
}
