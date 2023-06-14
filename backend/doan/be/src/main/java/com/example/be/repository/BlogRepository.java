package com.example.be.repository;

import com.example.be.entity.Blog;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogRepository extends BaseRepository<Blog, Long> {

}
