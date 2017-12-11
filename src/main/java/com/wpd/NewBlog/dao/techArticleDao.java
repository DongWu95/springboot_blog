package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.techArticle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/11/2 0002.
 */
@Repository
public interface techArticleDao extends JpaRepository<techArticle,Integer> {





}
