package com.example.be.entity.mapped;

import com.example.be.entity.User;
import com.example.be.entity.compositekey.ReviewComposite;
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
public class Review {
    @EmbeddedId
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private ReviewComposite id ;

    @ManyToOne
    @MapsId("adminId")
    @JoinColumn(name = "admin_id")
    private User admin;

    @ManyToOne
    @MapsId("userId")
    @JoinColumn(name = "user_id")
    private User user;

    @NotNull
    private String content;

    @NotNull
    private String categoryName;

    @NotNull
    private int categoryId;

    @NotNull
    private String image;

    @NotNull
    private int star;
}
