package com.example.be.service.Impl;

import com.example.be.entity.Blog;
import com.example.be.repository.BaseRepository;
import com.example.be.service.BlogService;
import com.example.be.util.Utils;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class BlogServiceImpl extends BaseServiceImpl<Blog> implements BlogService {
    public BlogServiceImpl(BaseRepository<Blog, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

}
