package com.wpd.NewBlog.dao;

import com.wpd.NewBlog.domin.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * Created by Administrator on 2017/12/8 0008.
 */
@Repository
public interface UsersRepository extends JpaRepository<Users,Integer> {


    Optional<Users> findByName(String username);

}
