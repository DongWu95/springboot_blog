package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Shortwords;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/10/29 0029.
 */
@Repository
public interface ShortwordsDao extends JpaRepository<Shortwords,Integer> {




}
