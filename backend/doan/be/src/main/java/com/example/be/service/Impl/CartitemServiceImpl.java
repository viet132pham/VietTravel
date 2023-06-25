package com.example.be.service.Impl;

import com.example.be.dto.CartDTO;
import com.example.be.dto.CartitemDTO;
import com.example.be.dto.UserDTO;
import com.example.be.entity.*;
import com.example.be.repository.*;
import com.example.be.request.CartitemRequest;
import com.example.be.service.CartitemService;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.ArrayList;
import java.util.List;

@Service
@Log4j2
public class CartitemServiceImpl implements CartitemService {
    @Autowired
    private ModelMapper mapper;

    @Autowired
    private CartitemRepository cartitemRepository;

    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private HotelRepository hotelRepository;
    @Autowired
    private VehicleRepository vehicleRepository;
    @Override
    public String createRequest(CartitemRequest cartitemRequest, BindingResult bindingResult) {
        Cartitem cartitem = new Cartitem();

        if (cartitemRequest.getCategoryName().equals("tour")) {
            Tour tour = tourRepository.findTourById(cartitemRequest.getCategoryId());
            if (tour != null) {
                mapper.map(cartitemRequest, cartitem);
                Cart cart = cartRepository.findById(cartitemRequest.getCartId())
                        .orElseThrow(() -> new IllegalArgumentException("id not found: " + cartitemRequest.getCartId()));
                cartitem.setCart(cart);
                cartitem.setImage(tour.getImage());
                cartitem.setSale(tour.getSale());
                cartitemRepository.save(cartitem);
                return "oke";
            } else {
                return "id not founda";
            }
        } else if (cartitemRequest.getCategoryName().equals("hotel")) {
            Hotel hotel = hotelRepository.findHotelById(cartitemRequest.getCategoryId());
            if (hotel != null) {
                mapper.map(cartitemRequest, cartitem);
                Cart cart = cartRepository.findById(cartitemRequest.getCartId())
                        .orElseThrow(() -> new IllegalArgumentException("id not found: " + cartitemRequest.getCartId()));
                cartitem.setCart(cart);
                cartitem.setImage(hotel.getImage());
                cartitem.setSale(hotel.getSale());
                cartitemRepository.save(cartitem);
                return "oke";
            } else {
                return "id not foundb";
            }
        } else if (cartitemRequest.getCategoryName().equals("vehicle")) {
            Vehicle vehicle = vehicleRepository.findVehicleById(cartitemRequest.getCategoryId());
            if (vehicle != null) {
                mapper.map(cartitemRequest, cartitem);
                Cart cart = cartRepository.findById(cartitemRequest.getCartId())
                        .orElseThrow(() -> new IllegalArgumentException("id not found: " + cartitemRequest.getCartId()));
                cartitem.setCart(cart);
                cartitem.setImage(vehicle.getImage());
                cartitem.setSale(vehicle.getSale());
                cartitemRepository.save(cartitem);
                return "oke";
            } else {
                return "id not foundc";
            }
        } else {
            return "not found ten item";
        }
    }

    @Override
    public void deleteCartitem(long id) {
        cartitemRepository.deleteById(id);
    }

    @Override
    public void deleteAllCartitem(long cartId) {
        List<Long> cartItemIdList = cartitemRepository.findAllItems(cartId);
        cartItemIdList.forEach(cartitem -> {
            cartitemRepository.deleteById(cartitem);
        });
    }
    @Override
    public Cartitem updateQuantityCart(int quantity, long itemId) {
        Cartitem cartitem = cartitemRepository.findById(itemId).orElseThrow(() -> new IllegalArgumentException(("id not found: " + itemId)));
        cartitem.setQuantity(quantity);
        return cartitemRepository.save(cartitem);
    }
    @Override
    public CartitemDTO getCartitemById(long id) {
        Cartitem cartitem = cartitemRepository.findById(id).orElseThrow(() -> new IllegalArgumentException(("id not found: " + id)));

            UserDTO userDTO = new UserDTO();
            CartDTO cartDTO = new CartDTO();
            CartitemDTO cartitemDTO = new CartitemDTO();
            mapper.map(cartitem, cartitemDTO);
            mapper.map(cartitem.getCart(), cartDTO);
            mapper.map(cartitem.getCart().getUser(), userDTO);
            cartDTO.setUserDTO(userDTO);
            cartitemDTO.setCartDTO(cartDTO);

        return cartitemDTO;
    }

}
