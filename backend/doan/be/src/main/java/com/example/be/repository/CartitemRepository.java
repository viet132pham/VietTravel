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
    @Query(value = "SELECT ci.category_id " +
            "FROM cartitem ci " +
            "INNER JOIN cart c ON ci.cart_id = c.id " +
            "WHERE ci.category_name = :category " +
            "AND c.status = 'DONE' " +
            "GROUP BY ci.category_id " +
            "ORDER BY COUNT(ci.category_id) DESC " +
            "LIMIT 6", nativeQuery = true)
    List<Integer> findCategoryIdInCartitem(String category);

    @Modifying
    @Query(value = "SELECT id\n" +
            "FROM cartitem\n" +
            "WHERE status = 'PROCESS'\n" +
            "AND cart_id = :cartId;", nativeQuery = true)
    List<Long> findAllItems(long cartId);

}
