package com.example.be.controller;

import com.example.be.dto.CartitemDTO;
import com.example.be.entity.Cartitem;
import com.example.be.repository.CartitemRepository;
import com.example.be.request.CartitemRequest;
import com.example.be.service.CartitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cartitem")
public class CartitemController {
    @Autowired
    private CartitemRepository cartitemRepository;

    @Autowired
    private CartitemService cartitemService;

    @PostMapping("/post")
    public ResponseEntity<?> postRequest(@RequestBody @Valid CartitemRequest cartitemRequest, BindingResult bindingResult) {
        try {
            cartitemService.createRequest(cartitemRequest, bindingResult);
        } catch (Exception exception) {
            return new ResponseEntity<>("fail", HttpStatus.BAD_REQUEST);
        }
        return  new ResponseEntity<>("oke", HttpStatus.OK);
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
    public CartitemDTO getCartitemById(@PathVariable(value = "id") long id){
        return cartitemService.getCartitemById(id);
    }

}