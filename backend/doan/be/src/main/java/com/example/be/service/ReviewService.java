package com.example.be.service;

import com.example.be.entity.mapped.Review;
import com.example.be.request.ReviewRequest;
import org.springframework.validation.BindingResult;

import java.util.List;

public interface ReviewService {

    Review createRequest(ReviewRequest reviewRequest, BindingResult bindingResult);

    void deleteReview(long id);

    Review updateReview(long id, ReviewRequest reviewRequest, BindingResult bindingResult);

    List<Review> getReviewByCategoryId(long id, String type);

    List<Review> getAllReviewByCategoryId(String type);

}
