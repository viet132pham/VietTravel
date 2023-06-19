package com.example.be.controller;

import com.example.be.entity.Hotel;
import com.example.be.repository.HotelRepository;
import com.example.be.service.BaseService;
import com.example.be.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/hotel")
public class HotelController extends BaseController<Hotel> {
    public HotelController(BaseService<Hotel> baseService) {
        super(baseService);
    }

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private HotelService hotelService;

    @GetMapping("/find/trending")
    public List<Hotel> findCategoryIdInCartitem() {
        return hotelService.findHotelTrending();
    }

    @GetMapping("/find/sale")
    public List<Hotel> findSaleHotel() {
        return hotelRepository.findSaleHotel();
    }

    @GetMapping("/get/sale_value")
    public List<Integer> findSaleValue() {
        return hotelRepository.getAvailableSales();
    }

    @GetMapping("/search")
    public List<Hotel> searchHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "numRooms", required = false) Integer numRooms,
            @RequestParam(value = "numGuests", required = false) Integer numGuests
    ) {
        return hotelService.searchHotels(location, checkIn, checkOut, numRooms, numGuests);
    }

    @GetMapping("/searchbyname/{name}")
    public Hotel searchHotelByName(@PathVariable(value = "name") String name) {
        return hotelService.findHotelByName(name);
    }

    @GetMapping("/filter")
    public List<Hotel> filterHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "priceStart", required = false) String priceStart,
            @RequestParam(value = "priceEnd", required = false) String priceEnd,
            @RequestParam(value = "sale", required = false) String sale
    ) {
        return hotelService.filterHotels(location, checkIn, checkOut, priceStart, priceEnd, sale);
    }
}