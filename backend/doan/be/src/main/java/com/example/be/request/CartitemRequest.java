package com.example.be.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartitemRequest {

    private long cartId;

    private String categoryName;

    private long categoryId;

    private String name;

    private int price;

    private int quantity;
}
