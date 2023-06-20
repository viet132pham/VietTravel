package com.example.be.controller;

import com.example.be.dto.BlogDTO;
import com.example.be.entity.Blog;
import com.example.be.request.BlogRequest;
import com.example.be.service.BaseService;
import com.example.be.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/blog")
public class BlogController extends BaseController<Blog> {
    public BlogController(BaseService<Blog> baseService) {
        super(baseService);
    }

    @Autowired
    private BlogService blogService;

    @PostMapping("/post")
    public Blog postRequest(@RequestBody @Valid BlogRequest blogRequest, BindingResult bindingResult) {
        return blogService.createRequest(blogRequest, bindingResult);
    }

    @DeleteMapping("/delete/{id}")
    public void deleteBlog(@PathVariable(value = "id") long id){
        blogService.deleteBlog(id);
    }

    @PutMapping("/put/{id}")
    public Blog updateBlog(@PathVariable(value = "id") long id, @RequestBody @Valid BlogRequest blogRequest, BindingResult bindingResult) {
        return blogService.updateBlog(id, blogRequest, bindingResult);
    }

    // get blog theo id blog, gen blog ra front end
    @GetMapping("/get/{id}")
    public BlogDTO getBlogByBlogId(@PathVariable(value = "id") long id, BindingResult bindingResult){
        return blogService.getBlogByBlogId(id, bindingResult);
    }

    // get blog theo category blog, có thể là list blog theo category, filter chẳng hạn nhưng nếu không có time thì thôi
//    @GetMapping("/get/{id}/{type}")
//    public Blog getBlogByCategory(@PathVariable(value = "id") long id, @PathVariable(value = "type") String type, BindingResult bindingResult){
//        return blogService.getBlogByCategory(id, type, bindingResult);
//    }

}