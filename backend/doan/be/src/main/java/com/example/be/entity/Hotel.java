package com.example.be.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "hotel")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Hotel extends BaseEntity{
    @NotNull
    private String code;
    @NotNull
    private String name;

    @NotNull
    private int numberRoom;
    @NotNull
    private int numberGuest;
    @NotNull
    private int sale;
    @NotNull
    private int status;
    @NotNull
    private String image;
    @NotNull
    private String price;
    @NotNull
    private String description;
    @NotNull
    private Date timeStart;
    @NotNull
    private Date timeEnd;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinColumn(name = "location_id")
    private Location location;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinColumn(name = "admin_id")
    private User admin;

    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinTable(name = "hotel_amenity", joinColumns = {@JoinColumn(name = "hotel_id")}, inverseJoinColumns = {@JoinColumn(name = "amenityhotel_id")})
    private Set<Amenityhotel> amenityhotels = new HashSet<>();

    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinTable(name = "hotel_essential", joinColumns = {@JoinColumn(name = "hotel_id")}, inverseJoinColumns = {@JoinColumn(name = "essential_id")})
    private Set<Essentials> essentials = new HashSet<>();

    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinTable(name = "hotel_landmark", joinColumns = {@JoinColumn(name = "hotel_id")}, inverseJoinColumns = {@JoinColumn(name = "landmark_id")})
    private Set<Landmarks> landmarks = new HashSet<>();
}
