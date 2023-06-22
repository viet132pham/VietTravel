package com.example.be.dto;

import com.example.be.entity.Amenityhotel;
import com.example.be.entity.Essentials;
import com.example.be.entity.Landmarks;
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
public class HotelDTO {
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
    private ArrayList<Amenityhotel> amenityhotel;
    private List<ReviewsDTO> reviewsDTOS;
    private ArrayList<Landmarks> landmarks;
    private ArrayList<Essentials> essentials;
}
