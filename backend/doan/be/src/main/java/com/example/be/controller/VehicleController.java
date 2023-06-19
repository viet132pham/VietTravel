package com.example.be.controller;

import com.example.be.entity.Vehicle;
import com.example.be.repository.VehicleRepository;
import com.example.be.service.BaseService;
import com.example.be.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/vehicle")
public class VehicleController extends BaseController<Vehicle> {
    public VehicleController(BaseService<Vehicle> baseService) {
        super(baseService);
    }

    @Autowired
    private VehicleRepository vehicleRepository;

    @Autowired
    private VehicleService vehicleService;

    @GetMapping("/find/trending")
    public List<Vehicle> findCategoryIdInCartitem() {
        return vehicleService.findVehicleTrending();
    }

    @GetMapping("/find/sale")
    public List<Vehicle> findSaleVehicle() {
        return vehicleRepository.findSaleVehicle();
    }

    @GetMapping("/get/sale_value")
    public List<Integer> findSaleValue() {
        return vehicleRepository.getAvailableSales();
    }

    @GetMapping("/search/{location}")
    public List<Vehicle> searchTour(@PathVariable(value = "location") String location) {
        return vehicleService.findVehicleByLocation(location);
    }

    @GetMapping("/searchbyname/{name}")
    public Vehicle searchVehicleByName(@PathVariable(value = "name") String name) {
        return vehicleService.findVehicleByName(name);
    }

    @GetMapping("/filter")
    public List<Vehicle> filterHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "priceStart", required = false) String priceStart,
            @RequestParam(value = "priceEnd", required = false) String priceEnd,
            @RequestParam(value = "sale", required = false) String sale
    ) {
        return vehicleService.filterVehicles(location, checkIn, checkOut, priceStart, priceEnd, sale);
    }

}