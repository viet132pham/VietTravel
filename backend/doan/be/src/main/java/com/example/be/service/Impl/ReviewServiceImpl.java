package com.example.be.service.Impl;

import com.example.be.entity.mapped.Review;
import com.example.be.repository.ReviewRepository;
import com.example.be.repository.UserRepository;
import com.example.be.request.ReviewRequest;
import com.example.be.service.ReviewService;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;

@Service
@Log4j2
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ModelMapper mapper;
    public Review createRequest(ReviewRequest reviewRequest, BindingResult bindingResult) {
        Review review = new Review();
        mapper.map(reviewRequest, review);
        review.setUser(userRepository.findUserById(reviewRequest.getUserId()));
        review.setAdmin(userRepository.findUserById(reviewRequest.getAdminId()));
        return reviewRepository.save(review);
    }

    public void deleteReview(long id) {
        reviewRepository.deleteById(id);
    }

    public Review updateReview(long id, ReviewRequest reviewRequest, BindingResult bindingResult) {
        Review review = reviewRepository.findById(id).orElseThrow(() -> new IllegalArgumentException(("id not found: " + id)));
        mapper.map(reviewRequest, review);
        review.setUser(userRepository.findUserById(reviewRequest.getUserId()));
        review.setAdmin(userRepository.findUserById(reviewRequest.getAdminId()));
        return reviewRepository.save(review);
    }

    public List<Review> getReviewByCategoryId(long id, String type) {
        return reviewRepository.findReviewsByCategoryIdAndCategoryName(id, type);
    }

    public List<Review> getAllReviewByCategoryId(String type) {
        return reviewRepository.findReviewsByCategoryName(type);
    }
}
