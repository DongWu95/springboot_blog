package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.techArticle;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/11/2 0002.
 */
@Repository
public interface techArticleImpl extends PagingAndSortingRepository<techArticle, Integer> {


}
