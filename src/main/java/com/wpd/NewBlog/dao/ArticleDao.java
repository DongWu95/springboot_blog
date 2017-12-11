package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/10/27 0027.
 */
@Repository
public interface ArticleDao extends JpaRepository<Article,Integer> {




}
