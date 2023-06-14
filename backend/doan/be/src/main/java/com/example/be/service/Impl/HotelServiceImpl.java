package com.example.be.service.Impl;

import com.example.be.entity.Hotel;
import com.example.be.entity.Location;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.CartitemRepository;
import com.example.be.repository.HotelRepository;
import com.example.be.repository.LocationRepository;
import com.example.be.service.HotelService;
import com.example.be.util.Utils;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Service
@Log4j2
public class HotelServiceImpl extends BaseServiceImpl<Hotel> implements HotelService {
    public HotelServiceImpl(BaseRepository<Hotel, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private LocationRepository locationRepository;

    @Autowired
    private CartitemRepository cartitemRepository;
    public List<Hotel> findHotelTrending() {
        List<Integer> cartitems = cartitemRepository.findCategoryIdInCartitem("hotel");
        System.out.println(cartitems);
        List<Hotel> result = new ArrayList<>();

        cartitems.forEach(cartitem -> {
            result.add(hotelRepository.findHotelById(cartitem));
        });
        return result;
    }
    @SneakyThrows
    public List<Hotel> searchHotels(String location, String checkIn, String checkOut, Integer numRooms, Integer numGuests) {
        Location location1 = locationRepository.findLocationByName(location);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

        Date checkInConvert = formatter.parse(checkIn);
        Timestamp checkInTimestamp = new Timestamp(checkInConvert.getTime());

        Date checkOutConvert = formatter.parse(checkOut);
        Timestamp checkOutTimestamp = new Timestamp(checkOutConvert.getTime());
        return hotelRepository.searchHotels(location1, checkInTimestamp, checkOutTimestamp, numRooms, numGuests);
    }

    public Hotel findHotelByName(String name) {
        return hotelRepository.findHotelByName(name);
    }
    @SneakyThrows
    public List<Hotel> filterHotels(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale) {
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
        return hotelRepository.filterHotels(Math.toIntExact(location1.getId()), checkInTimestamp, checkOutTimestamp, priceStartString, priceEndString, saleWrap);
    }

}
