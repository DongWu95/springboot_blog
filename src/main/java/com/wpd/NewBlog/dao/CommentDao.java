package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/11/9 0009.
 */
@Repository
public interface CommentDao  extends JpaRepository<Comment,Integer> {




}
