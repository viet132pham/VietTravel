package com.example.be.service;

import com.example.be.entity.Tour;

import java.util.List;

public interface TourService extends BaseService<Tour> {

    List<Tour> findTourTrending();
    List<Tour> findTourByLocation(String location);

    Tour findTourByName(String name);

    List<Tour> filterTours(String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale);
}
