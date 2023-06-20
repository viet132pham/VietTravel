package com.example.be.service;

import com.example.be.dto.CartitemDTO;
import com.example.be.entity.Cartitem;
import com.example.be.request.CartitemRequest;
import org.springframework.validation.BindingResult;

public interface CartitemService {

    Cartitem createRequest(CartitemRequest cartitemRequest, BindingResult bindingResult);

    void deleteCartitem(long id);

    Cartitem updateQuantityCart(int quantity, long itemId, BindingResult bindingResult);

    CartitemDTO getCartitemById(long id);
}
