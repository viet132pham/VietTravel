package com.example.be.dto;

import com.example.be.entity.Amenitytour;
import com.example.be.entity.Excluded;
import com.example.be.entity.Included;
import com.example.be.entity.Itinerary;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Service
public class TourDTO {
    private int id;
    private String code;
    private String name;
    private int numberGuest;
    private int sale;
    private int status;
    private String image;
    private int price;
    private String description;
    private String timeStart;
    private String timeEnd;
    private String vehicle;
    private String hotel;
    private LocationDTO locationDTO;
    private ArrayList<Amenitytour> amenitytour;
    private ArrayList<Included> includeds;
    private ArrayList<Excluded> excludeds;
    private ArrayList<Itinerary> itineraries;
    private List<ReviewsDTO> reviewsDTOS;
    private Date createdAt;

    private Date updatedAt;
}
