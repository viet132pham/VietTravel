package com.example.be.repository;

import com.example.be.entity.mapped.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long>{
    public List<Review> findReviewsByCategoryIdAndCategoryName(long id, String type);

    public List<Review> findReviewsByCategoryName(String type);

}
