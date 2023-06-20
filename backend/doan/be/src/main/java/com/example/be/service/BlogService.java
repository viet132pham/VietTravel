package com.example.be.service;

import com.example.be.dto.BlogDTO;
import com.example.be.entity.Blog;
import com.example.be.request.BlogRequest;
import org.springframework.validation.BindingResult;

public interface BlogService extends BaseService<Blog> {

    Blog createRequest(BlogRequest blogRequest, BindingResult bindingResult);

    void deleteBlog(long id);

    Blog updateBlog(long id, BlogRequest blogRequest, BindingResult bindingResult);

    BlogDTO getBlogByBlogId(long id, BindingResult bindingResult);

//    Blog getBlogByCategory(long id, String type, BindingResult bindingResult);
}
