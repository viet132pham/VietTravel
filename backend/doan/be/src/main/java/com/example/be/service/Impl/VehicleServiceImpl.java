package com.example.be.service.Impl;

import com.example.be.entity.Hotel;
import com.example.be.entity.Location;
import com.example.be.entity.Vehicle;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.CartitemRepository;
import com.example.be.repository.LocationRepository;
import com.example.be.repository.VehicleRepository;
import com.example.be.service.VehicleService;
import com.example.be.util.Utils;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Service
@Log4j2
public class VehicleServiceImpl extends BaseServiceImpl<Vehicle> implements VehicleService {
    public VehicleServiceImpl(BaseRepository<Vehicle, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }
    @Autowired
    private VehicleRepository vehicleRepository;

    @Autowired
    private LocationRepository locationRepository;
    @Autowired
    private CartitemRepository cartitemRepository;
    public List<Vehicle> findVehicleTrending() {
        List<Integer> cartitems = cartitemRepository.findCategoryIdInCartitem("tour");
        System.out.println(cartitems);
        List<Vehicle> result = new ArrayList<>();

        cartitems.forEach(cartitem -> {
            result.add(vehicleRepository.findVehicleById(cartitem));
        });
        return result;
    }

    public List<Vehicle> findVehicleByLocation(String location) {
        Location location1 = locationRepository.findLocationByName(location);
        return vehicleRepository.findVehicleByLocation(location1);
    }

    public Vehicle findVehicleByName(String name) {
        return vehicleRepository.findVehicleByName(name);
    }

    @SneakyThrows
    public List<Vehicle> filterVehicles(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale) {
        Location location1 = locationRepository.findLocationByName(location);

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

        Date checkInConvert = formatter.parse(checkIn);
        Timestamp checkInTimestamp = new Timestamp(checkInConvert.getTime());

        Date checkOutConvert = formatter.parse(checkOut);
        Timestamp checkOutTimestamp = new Timestamp(checkOutConvert.getTime());

        Integer priceStartString = Integer.parseInt(priceStart);
        Integer priceEndString = Integer.parseInt(priceEnd);

        Integer saleWrap = Integer.parseInt(sale);
        if (saleWrap != 1){
            saleWrap = null;
        }
        return vehicleRepository.filterVehicles(Math.toIntExact(location1.getId()), checkInTimestamp, checkOutTimestamp, priceStartString, priceEndString, saleWrap);
    }
}
