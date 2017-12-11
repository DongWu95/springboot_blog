package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Resourse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/11/3 0003.
 */
@Repository
public interface ResourseDao extends JpaRepository<Resourse,Integer> {



}
