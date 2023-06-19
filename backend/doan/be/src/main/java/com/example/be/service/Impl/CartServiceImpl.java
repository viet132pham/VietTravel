package com.example.be.service.Impl;

import com.example.be.entity.Cart;
import com.example.be.entity.User;
import com.example.be.entity.mapped.Cartitem;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.CartRepository;
import com.example.be.repository.CartitemRepository;
import com.example.be.repository.UserRepository;
import com.example.be.request.CartRequest;
import com.example.be.service.CartService;
import com.example.be.util.Utils;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.ArrayList;
import java.util.List;

@Service
@Log4j2
public class CartServiceImpl extends BaseServiceImpl<Cart> implements CartService {
    public CartServiceImpl(BaseRepository<Cart, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

    @Autowired
    private ModelMapper mapper;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private CartitemRepository cartitemRepository;

    @Autowired
    private Utils utils;

    @Autowired
    private UserRepository userRepository;
    public Cart createRequest(CartRequest cartRequest, BindingResult bindingResult){
        Cart cart = new Cart();
        mapper.map(cartRequest, cart);
        cart.setUser(userRepository.findUserById(cartRequest.getUserId()));
        return cartRepository.save(cart);
    }

    public Cart updateCart(long id, CartRequest cartRequest, BindingResult bindingResult) {
        Cart cart = cartRepository.findById(id).orElseThrow(() -> new IllegalArgumentException(("id not found: " + id)));
        BindingResult result = utils.getListResult(bindingResult, cartRequest);
        if (result.hasErrors()) {
            throw utils.invalidInputException(result);
        } else {
            mapper.map(cartRequest, cart);
            return cartRepository.save(cart);
        }
    }

    public Cart getCart(long userId, BindingResult bindingResult){
        User user = userRepository.findUserById(userId);
        Cart cart = cartRepository.findCartByUserAndStatus(user, "WAITING");
        if (cart == null) {
            return null;
        } else {
            cart.setStatus("PROCESS");
            return cart;
        }
    }

    public List<Cartitem> getItems(long cartId, BindingResult bindingResult) {
        List<Long> cartitems = cartitemRepository.findAllItems(cartId);
        List<Cartitem> result = new ArrayList<>();
        cartitems.forEach(cartitem -> {
                        result.add(cartitemRepository.findById(cartitem).orElseThrow(() -> new IllegalArgumentException(("id not found: " + cartitem))));
                    });
        return result;
    }

}
