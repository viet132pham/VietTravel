package com.example.be.entity.mapped;

import com.example.be.entity.Cart;
import com.example.be.entity.compositekey.CartitemComposite;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Cartitem {
    @EmbeddedId
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private CartitemComposite id ;

    @ManyToOne
    @MapsId("cartId")
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @NotNull
    private String categoryName;

    @NotNull
    private int categoryId;

    @NotNull
    private String name;

    @NotNull
    private int price;

    @NotNull
    private int quantity;
}
