package com.example.be.repository;

import com.example.be.entity.Location;
import com.example.be.entity.Tour;
import com.example.be.entity.Vehicle;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;

@Repository
public interface VehicleRepository extends BaseRepository<Vehicle, Long>{
    Vehicle findVehicleById(long id);

    @Modifying
    @Query(value = "SELECT * \n" +
            "FROM vehicle\n" +
            "WHERE sale > 0\n" +
            "ORDER BY sale DESC;\n;", nativeQuery = true)
    List<Vehicle> findSaleVehicle();

    List<Vehicle> findVehicleByLocation(Location location);

    Vehicle findVehicleByName(String name);

    @Query(value = "SELECT * FROM Vehicle h WHERE " +
            "(:location IS NULL OR h.location_id = :location) " +
            "AND (:checkIn IS NULL OR h.time_start <= :checkIn) " +
            "AND (:checkOut IS NULL OR h.time_end <= :checkOut) " +
            "AND (:priceStart IS NULL OR h.price >= :priceStart) " +
            "AND (:priceEnd IS NULL OR h.price <= :priceEnd) " +
            "AND (:sale IS NULL OR h.sale > 0)", nativeQuery = true)
    List<Vehicle> filterVehicles(
                    @Param("location") Integer location,
                    @Param("checkIn") Timestamp checkIn,
                    @Param("checkOut") Timestamp checkOut,
                    @Param("priceStart") Integer priceStart,
                    @Param("priceEnd") Integer priceEnd,
                    @Param("sale") Integer sale
            );
}
