package com.example.be.service.Impl;

import com.example.be.entity.Cart;
import com.example.be.repository.BaseRepository;
import com.example.be.service.CartService;
import com.example.be.util.Utils;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class CartServiceImpl extends BaseServiceImpl<Cart> implements CartService {
    public CartServiceImpl(BaseRepository<Cart, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

}
