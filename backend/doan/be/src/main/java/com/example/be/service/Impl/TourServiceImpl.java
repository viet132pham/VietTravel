package com.example.be.service.Impl;

import com.example.be.dto.LocationDTO;
import com.example.be.dto.ReviewsDTO;
import com.example.be.dto.TourDTO;
import com.example.be.dto.UserDTO;
import com.example.be.entity.Location;
import com.example.be.entity.Reviews;
import com.example.be.entity.Tour;
import com.example.be.entity.User;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.CartitemRepository;
import com.example.be.repository.LocationRepository;
import com.example.be.repository.TourRepository;
import com.example.be.service.TourService;
import com.example.be.util.Utils;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @Autowired
    private ModelMapper mapper;

    public List<TourDTO> findSaleTour() {
        List<Tour> result = tourRepository.findSaleTour();
        List<TourDTO> tourDTOList = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = result.get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        return tourDTOList;
    }

    public List<TourDTO> findTourTrending() {
        List<Integer> cartitems = cartitemRepository.findCategoryIdInCartitem("tour");
        List<Tour> result = new ArrayList<>();

        cartitems.forEach(cartitem -> {
            result.add(tourRepository.findTourById(cartitem));
        });

        List<TourDTO> tourDTOList = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = result.get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        return tourDTOList;
    }

    public List<TourDTO> findTourByLocation(String location) {
        Location location1 = locationRepository.findLocationByName(location);
        List<Tour> result = tourRepository.findTourByLocation(location1);
        List<TourDTO> tourDTOList = new ArrayList<>();
        for (int i = 0; i < result.size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = result.get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        return tourDTOList;
    }

    public TourDTO findTourByName(String name) {
        Tour tour = tourRepository.findTourByName(name);
        TourDTO tourDTO = new TourDTO();
        LocationDTO locationDTO = new LocationDTO();
        ReviewsDTO reviewsDTO = new ReviewsDTO();
        mapper.map(tour, tourDTO);

        mapper.map(tour.getLocation(), locationDTO);
        tourDTO.setLocationDTO(locationDTO);

        Set<Reviews> reviewsSet = tour.getReviews();
        List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

        List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

        for (int j = 0; j < reviewsList.size(); j++){
            UserDTO userDTO = new UserDTO();
            ReviewsDTO reviewsDTO1 = new ReviewsDTO();
            mapper.map(reviewsList.get(j), reviewsDTO1);
            mapper.map(reviewsList.get(j).getUser(), userDTO);
            reviewsDTO1.setUser(userDTO);
            reviewsDTOList.add(reviewsDTO1);
        }

        tourDTO.setReviewsDTOS(reviewsDTOList);

        return tourDTO;
    }

    @SneakyThrows
    public Page<TourDTO> filterTours(Pageable pageable, String location, String checkIn, String checkOut, String priceStart, String priceEnd, String sale) {
        Location location1 = locationRepository.findLocationByName(location);

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

        Date checkInConvert = formatter.parse(checkIn);
        Timestamp checkInTimestamp = new Timestamp(checkInConvert.getTime());

        Date checkOutConvert = formatter.parse(checkOut);
        Timestamp checkOutTimestamp = new Timestamp(checkOutConvert.getTime());

        Integer priceStartString = Integer.parseInt(priceStart);
        Integer priceEndString = Integer.parseInt(priceEnd);

        Integer saleWrap = Integer.parseInt(sale);
        if (saleWrap != 1) {
            saleWrap = null;
        }

        Page<Tour> tours = tourRepository.filterTours(Math.toIntExact(location1.getId()), checkInTimestamp, checkOutTimestamp, priceStartString, priceEndString, saleWrap, pageable);
        List<TourDTO> tourDTOList = new ArrayList<>();
        System.out.println(tours);
        for (int i = 0; i < tours.getContent().size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = tours.getContent().get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        Page<TourDTO> tourDTOPage = new PageImpl<>(tourDTOList, tours.getPageable(), tours.getTotalElements());

        return tourDTOPage;
    }

    public Page<TourDTO> getListPaginationDTO(Pageable pageable) {
        Page<Tour> tours = tourRepository.findAll(pageable);
        List<TourDTO> tourDTOList = new ArrayList<>();
        for (int i = 0; i < tours.getContent().size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = tours.getContent().get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        Page<TourDTO> tourDTOPage = new PageImpl<>(tourDTOList, tours.getPageable(), tours.getTotalElements());
        return tourDTOPage;
    }

    public Page<TourDTO> getSortedAndPaginateDTO(Pageable pageable) {
        Page<Tour> tours = tourRepository.findAll(pageable);
        List<TourDTO> tourDTOList = new ArrayList<>();
        for (int i = 0; i < tours.getContent().size(); i++){
            TourDTO tourDTO = new TourDTO();
            LocationDTO locationDTO = new LocationDTO();
            ReviewsDTO reviewsDTO = new ReviewsDTO();
            Tour tour = tours.getContent().get(i);
            mapper.map(tour, tourDTO);

            mapper.map(tour.getLocation(), locationDTO);
            tourDTO.setLocationDTO(locationDTO);

            Set<Reviews> reviewsSet = tour.getReviews();
            List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

            List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

            for (int j = 0; j < reviewsList.size(); j++){
                UserDTO userDTO = new UserDTO();
                ReviewsDTO reviewsDTO1 = new ReviewsDTO();
                mapper.map(reviewsList.get(j), reviewsDTO1);
                mapper.map(reviewsList.get(j).getUser(), userDTO);
                reviewsDTO1.setUser(userDTO);
                reviewsDTOList.add(reviewsDTO1);
            }

            tourDTO.setReviewsDTOS(reviewsDTOList);

            tourDTOList.add(tourDTO);
        }

        Page<TourDTO> tourDTOPage = new PageImpl<>(tourDTOList, tours.getPageable(), tours.getTotalElements());
        return tourDTOPage;
    }

    @Override
    public TourDTO getById(long id) {
        Tour tour = tourRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("id not found: " + id));
        TourDTO tourDTO = new TourDTO();
        LocationDTO locationDTO = new LocationDTO();
        ReviewsDTO reviewsDTO = new ReviewsDTO();
        mapper.map(tour, tourDTO);

        mapper.map(tour.getLocation(), locationDTO);
        tourDTO.setLocationDTO(locationDTO);

        Set<Reviews> reviewsSet = tour.getReviews();
        List<Reviews> reviewsList = new ArrayList<>(reviewsSet);

        List<ReviewsDTO> reviewsDTOList = new ArrayList<>();

        for (int j = 0; j < reviewsList.size(); j++){
            UserDTO userDTO = new UserDTO();
            ReviewsDTO reviewsDTO1 = new ReviewsDTO();
            mapper.map(reviewsList.get(j), reviewsDTO1);
            mapper.map(reviewsList.get(j).getUser(), userDTO);
            reviewsDTO1.setUser(userDTO);
            reviewsDTOList.add(reviewsDTO1);
        }

        tourDTO.setReviewsDTOS(reviewsDTOList);

        return tourDTO;
    }
}
