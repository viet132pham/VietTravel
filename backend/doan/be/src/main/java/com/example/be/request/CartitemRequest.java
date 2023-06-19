package com.example.be.request;

import com.example.be.entity.compositekey.CartitemComposite;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartitemRequest {
    private CartitemComposite id ;

    private long cartId;

    private String categoryName;

    private long categoryId;

    private String name;

    private int price;

    private int quantity;
}
