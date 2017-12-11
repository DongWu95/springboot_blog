package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Article;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/10/26 0026.
 */
@Repository
public interface ArticleImpl  extends PagingAndSortingRepository<Article, Integer> {



}
