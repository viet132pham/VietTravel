package com.example.be.repository;

import com.example.be.entity.Location;
import com.example.be.entity.Tour;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
@Repository
public interface TourRepository extends BaseRepository<Tour, Long>{
    Tour findTourById(long id);

    @Modifying
    @Query(value = "SELECT * \n" +
            "FROM tour\n" +
            "WHERE sale > 0\n" +
            "ORDER BY sale DESC LIMIT 6;\n;", nativeQuery = true)
    List<Tour> findSaleTour();

    List<Tour> findTourByLocation(Location location);

    Tour findTourByName(String name);

    @Query(value = "SELECT * FROM Tour h WHERE " +
            "(:location IS NULL OR h.location_id = :location) " +
            "AND (:checkIn IS NULL OR h.time_start <= :checkIn) " +
            "AND (:checkOut IS NULL OR h.time_end <= :checkOut) " +
            "AND (:priceStart IS NULL OR h.price >= :priceStart) " +
            "AND (:priceEnd IS NULL OR h.price <= :priceEnd) " +
            "AND (:sale IS NULL OR h.sale > 0)", nativeQuery = true)
    Page<Tour> filterTours(
            @Param("location") Integer location,
            @Param("checkIn") Timestamp checkIn,
            @Param("checkOut") Timestamp checkOut,
            @Param("priceStart") Integer priceStart,
            @Param("priceEnd") Integer priceEnd,
            @Param("sale") Integer sale,
            Pageable pageable
    );

    @Query(value = "SELECT DISTINCT h.sale FROM Tour h ORDER BY h.sale ASC", nativeQuery = true)
    List<Integer> getAvailableSales();
}
