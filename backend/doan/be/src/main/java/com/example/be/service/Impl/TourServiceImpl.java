package com.example.be.service.Impl;

import com.example.be.entity.Location;
import com.example.be.entity.Tour;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.CartitemRepository;
import com.example.be.repository.LocationRepository;
import com.example.be.repository.TourRepository;
import com.example.be.service.TourService;
import com.example.be.util.Utils;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Service
@Log4j2
public class TourServiceImpl extends BaseServiceImpl<Tour> implements TourService {
    public TourServiceImpl(BaseRepository<Tour, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

    @Autowired
    private TourRepository tourRepository;

    @Autowired
    private LocationRepository locationRepository;

    @Autowired
    private CartitemRepository cartitemRepository;
    public List<Tour> findTourTrending() {
        List<Integer> cartitems = cartitemRepository.findCategoryIdInCartitem("tour");
        List<Tour> result = new ArrayList<>();

        cartitems.forEach(cartitem -> {
            result.add(tourRepository.findTourById(cartitem));
        });
        return result;
    }

    public List<Tour> findTourByLocation(String location) {
        Location location1 = locationRepository.findLocationByName(location);
        return tourRepository.findTourByLocation(location1);
    }

    public Tour findTourByName(String name) {
        return tourRepository.findTourByName(name);
    }

    @SneakyThrows
    public List<Tour> filterTours(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale) {
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
        return tourRepository.filterTours(Math.toIntExact(location1.getId()), checkInTimestamp, checkOutTimestamp, priceStartString, priceEndString, saleWrap);
    }
}
