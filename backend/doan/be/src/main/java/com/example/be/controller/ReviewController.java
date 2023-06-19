package com.example.be.controller;

import com.example.be.entity.mapped.Review;
import com.example.be.request.ReviewRequest;
import com.example.be.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/review")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @PostMapping("/post")
    public Review postRequest(@RequestBody @Valid ReviewRequest reviewRequest, BindingResult bindingResult) {
        return reviewService.createRequest(reviewRequest, bindingResult);
    }

    @DeleteMapping("/delete/{id}")
    public void deleteReview(@PathVariable(value = "id") long id){
        reviewService.deleteReview(id);
    }

    @PutMapping("/put/{id}")
    public Review updateReview(@PathVariable(value = "id") long id, @RequestBody @Valid ReviewRequest reviewRequest, BindingResult bindingResult) {
        return reviewService.updateReview(id, reviewRequest, bindingResult);
    }

    // cái này là get theo tour(vehicle, hotel) cụ thể, phục vụ frontend
    @GetMapping("/get/{id}/{type}")
    public List<Review> getReviewByCategoryId(@PathVariable(value = "id") long id, @PathVariable(value = "type") String type){
        return reviewService.getReviewByCategoryId(id, type);
    }

    // cái này là get tất cả review của tour(vehicle, hotel), phục vụ backend
    @GetMapping("/get/ {type}")
    public List<Review> getAllReviewByCategoryId(@PathVariable(value = "type") String type){
        return reviewService.getAllReviewByCategoryId(type);
    }

}