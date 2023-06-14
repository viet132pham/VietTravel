package com.example.be.repository;

import com.example.be.entity.mapped.Cartitem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartitemRepository extends JpaRepository<Cartitem, Long>{
    @Modifying
    @Query(value = "SELECT category_id\n" +
            "FROM cartitem\n" +
            "WHERE category_name = :category\n" +
            "GROUP BY category_id\n" +
            "ORDER BY COUNT(category_id) DESC\n" +
            "LIMIT 6;", nativeQuery = true)
    List<Integer> findCategoryIdInCartitem(String category);
}
