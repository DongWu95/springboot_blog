package com.wpd.NewBlog.dao;


import com.wpd.NewBlog.domin.Shortwords;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/10/29 0029.
 */
@Repository
public interface ShortwordsImpl extends PagingAndSortingRepository<Shortwords, Integer> {



}
