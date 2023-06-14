package com.example.be.controller;

import com.example.be.entity.Essentials;
import com.example.be.service.BaseService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/essential")
public class EssentialsController extends BaseController<Essentials> {
    public EssentialsController(BaseService<Essentials> baseService) {
        super(baseService);
    }

}