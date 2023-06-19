package com.example.be.request;

import com.example.be.entity.compositekey.ReviewComposite;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReviewRequest {
    private ReviewComposite id ;

    private String content;

    private String categoryName;

    private int categoryId;

    private String image;

    private int star;

    private long adminId;

    private long userId;

}
