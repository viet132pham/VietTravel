package com.example.be.controller;

import com.example.be.entity.Blog;
import com.example.be.service.BaseService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/blog")
public class BlogController extends BaseController<Blog> {
    public BlogController(BaseService<Blog> baseService) {
        super(baseService);
    }

}