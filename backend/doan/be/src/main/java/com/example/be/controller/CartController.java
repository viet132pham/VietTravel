package com.example.be.controller;

import com.example.be.entity.Cart;
import com.example.be.service.BaseService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cart")
public class CartController extends BaseController<Cart> {
    public CartController(BaseService<Cart> baseService) {
        super(baseService);
    }

}