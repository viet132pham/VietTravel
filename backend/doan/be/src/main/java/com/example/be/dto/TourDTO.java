package com.example.be.dto;

import com.example.be.entity.Amenitytour;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Service
public class TourDTO {
    private String code;
    private String name;
    private int numberGuest;
    private int sale;
    private int status;
    private String image;
    private String price;
    private String description;
    private String timeStart;
    private String timeEnd;
    private LocationDTO locationDTO;
    private Amenitytour amenitytour;
    private List<ReviewsDTO> reviewsDTOS;
}
