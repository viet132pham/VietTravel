package com.example.be.controller;

import com.example.be.entity.mapped.Cartitem;
import com.example.be.repository.CartitemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cartitem")
public class CartitemController {
    @Autowired
    private CartitemRepository cartitemRepository;

//    @GetMapping("/find/trending/{category}")
//    public List<Cartitem> findCategoryIdInCartitem(@PathVariable(value = "category") String category) {
//        return cartitemRepository.findCategoryIdInCartitem(category);
//    }
}