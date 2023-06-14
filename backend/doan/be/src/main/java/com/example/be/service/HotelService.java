package com.example.be.service;

import com.example.be.entity.Hotel;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public interface HotelService extends BaseService<Hotel> {
    List<Hotel> findHotelTrending();

    List<Hotel> searchHotels(String location, String checkIn, String checkOut, Integer numRooms, Integer numGuests);

    Hotel findHotelByName(String name);

    List<Hotel> filterHotels(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale);
}
