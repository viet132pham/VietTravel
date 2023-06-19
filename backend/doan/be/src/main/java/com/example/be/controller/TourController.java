package com.example.be.controller;

import com.example.be.entity.Tour;
import com.example.be.repository.TourRepository;
import com.example.be.service.BaseService;
import com.example.be.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/tour")
public class TourController extends BaseController<Tour> {
    public TourController(BaseService<Tour> baseService) {
        super(baseService);
    }

    @Autowired
    private TourService tourService;

    @Autowired
    private TourRepository tourRepository;

    @GetMapping("/find/trending")
    public List<Tour> findCategoryIdInCartitem() {
        return tourService.findTourTrending();
    }

    @GetMapping("/find/sale")
    public List<Tour> findSaleTour() {
        return tourRepository.findSaleTour();
    }

    @GetMapping("/get/sale_value")
    public List<Integer> findSaleValue() {
        return tourRepository.getAvailableSales();
    }

    @GetMapping("/search/{location}")
    public List<Tour> searchTour(@PathVariable(value = "location") String location) {
        return tourService.findTourByLocation(location);
    }

    @GetMapping("/searchbyname/{name}")
    public Tour searchTourByName(@PathVariable(value = "name") String name) {
        return tourService.findTourByName(name);
    }

    @GetMapping("/filter")
    public List<Tour> filterHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "priceStart", required = false) String priceStart,
            @RequestParam(value = "priceEnd", required = false) String priceEnd,
            @RequestParam(value = "sale", required = false) String sale
    ) {
        return tourService.filterTours(location, checkIn, checkOut, priceStart, priceEnd, sale);
    }

}