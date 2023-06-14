package com.example.be.repository;

import com.example.be.entity.Hotel;
import com.example.be.entity.Location;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Repository
public interface HotelRepository extends BaseRepository<Hotel, Long>{
    Hotel findHotelById(long id);

    @Modifying
    @Query(value = "SELECT * \n" +
            "FROM hotel\n" +
            "WHERE sale > 0\n" +
            "ORDER BY sale DESC;\n;", nativeQuery = true)
    List<Hotel> findSaleHotel();

    List<Hotel> findHotelByLocation(Location location);

    @Query("SELECT h FROM Hotel h WHERE " +
            "(:location IS NULL OR h.location = :location) " +
            "AND (:checkIn IS NULL OR h.timeStart <= :checkIn) " +
            "AND (:checkOut IS NULL OR h.timeEnd <= :checkOut) " +
            "AND (:numRooms IS NULL OR h.numberRoom = :numRooms) " +
            "AND (:numGuests IS NULL OR h.numberGuest = :numGuests)")
    List<Hotel> searchHotels(
            @Param("location") Location location,
            @Param("checkIn") Timestamp checkIn,
            @Param("checkOut") Timestamp checkOut,
            @Param("numRooms") Integer numRooms,
            @Param("numGuests") Integer numGuests
    );

    Hotel findHotelByName(String name);

    @Query(value = "SELECT * FROM Hotel h WHERE " +
            "(:location IS NULL OR h.location_id = :location) " +
            "AND (:checkIn IS NULL OR h.time_start <= :checkIn) " +
            "AND (:checkOut IS NULL OR h.time_end <= :checkOut) " +
            "AND (:priceStart IS NULL OR h.price >= :priceStart) " +
            "AND (:priceEnd IS NULL OR h.price <= :priceEnd) " +
            "AND (:sale IS NULL OR h.sale > 0)", nativeQuery = true)
    List<Hotel> filterHotels(
            @Param("location") Integer location,
            @Param("checkIn") Timestamp checkIn,
            @Param("checkOut") Timestamp checkOut,
            @Param("priceStart") Integer priceStart,
            @Param("priceEnd") Integer priceEnd,
            @Param("sale") Integer sale
    );
}
