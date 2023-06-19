package com.example.be.controller;

import com.example.be.entity.Cart;
import com.example.be.entity.mapped.Cartitem;
import com.example.be.repository.CartitemRepository;
import com.example.be.request.CartRequest;
import com.example.be.request.CartitemRequest;
import com.example.be.service.CartitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cartitem")
public class CartitemController {
    @Autowired
    private CartitemRepository cartitemRepository;

    @Autowired
    private CartitemService cartitemService;

    @PostMapping("/post")
    public Cartitem postRequest(@RequestBody @Valid CartitemRequest cartitemRequest, BindingResult bindingResult) {
        return cartitemService.createRequest(cartitemRequest, bindingResult);
    }

    // remove all san pham khoi cart
    @DeleteMapping("/delete/{id}")
    public void deleteCartitem(@PathVariable(value = "id") long id){
        cartitemService.deleteCartitem(id);
    }

    // add san pham, tang quantity
    @PutMapping("/put/{quantity}/{itemId}")
    public Cartitem updateQuantityCart(@PathVariable(value = "quantity") int quantity, @PathVariable(value = "itemId") long itemId, BindingResult bindingResult) {
        return cartitemService.updateQuantityCart(quantity, itemId, bindingResult);
    }

    @GetMapping("/get/{id}")
    public Cartitem getCartitemById(@PathVariable(value = "id") long id){
        return cartitemService.getCartitemById(id);
    }

}