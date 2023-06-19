package com.example.be.service;

import com.example.be.entity.Cart;
import com.example.be.entity.mapped.Cartitem;
import com.example.be.request.CartRequest;
import org.springframework.validation.BindingResult;

import java.util.List;

public interface CartService extends BaseService<Cart> {

    Cart createRequest(CartRequest cartRequest, BindingResult bindingResult);

    Cart updateCart(long id, CartRequest cartRequest, BindingResult bindingResult);

    Cart getCart(long userId, BindingResult bindingResult);

    List<Cartitem> getItems(long cartId, BindingResult bindingResult);
}
