package com.example.be.service.Impl;

import com.example.be.entity.Blog;
import com.example.be.entity.mapped.Review;
import com.example.be.repository.BaseRepository;
import com.example.be.repository.BlogRepository;
import com.example.be.repository.UserRepository;
import com.example.be.request.BlogRequest;
import com.example.be.service.BlogService;
import com.example.be.util.Utils;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
@Log4j2
public class BlogServiceImpl extends BaseServiceImpl<Blog> implements BlogService {
    public BlogServiceImpl(BaseRepository<Blog, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private ModelMapper mapper;

    @Autowired
    private UserRepository userRepository;
    public Blog createRequest(BlogRequest blogRequest, BindingResult bindingResult) {
        Blog blog = new Blog();
        mapper.map(blogRequest, blog);
        blog.setAdmin(userRepository.findUserById(blogRequest.getAdminId()));
        return blogRepository.save(blog);
    }

    public void deleteBlog(long id) {
        blogRepository.deleteById(id);
    }

    public Blog updateBlog(long id, BlogRequest blogRequest, BindingResult bindingResult) {
        Blog blog = blogRepository.findById(id).orElseThrow(() -> new IllegalArgumentException(("id not found: " + id)));
        mapper.map(blogRequest, blog);
        blog.setAdmin(userRepository.findUserById(blogRequest.getAdminId()));
        return blogRepository.save(blog);
    }

    public Blog getBlogByBlogId(long id, BindingResult bindingResult) {
        Blog blog = blogRepository.findById(id).orElseThrow(() -> new IllegalArgumentException(("id not found: " + id)));
        return blog;
    }

//    public Blog getBlogByCategory(long id, String type, BindingResult bindingResult) {
//
//    }

}
