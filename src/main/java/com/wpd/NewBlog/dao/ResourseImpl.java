package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Resourse;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/11/3 0003.
 */
@Repository
public interface ResourseImpl extends PagingAndSortingRepository<Resourse, Integer> {



}
