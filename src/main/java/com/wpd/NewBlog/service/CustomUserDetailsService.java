package com.wpd.NewBlog.service;

import com.wpd.NewBlog.dao.UsersRepository;
import com.wpd.NewBlog.domin.CustomUserDetails;
import com.wpd.NewBlog.domin.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Created by Administrator on 2017/12/8 0008.
 */
@Service
public class CustomUserDetailsService implements UserDetailsService {


    @Autowired
    private UsersRepository usersRepository;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Users> optionalUsers = usersRepository.findByName(username);

        optionalUsers
                .orElseThrow(() -> new UsernameNotFoundException("Username not found"));
        return optionalUsers
                .map(CustomUserDetails::new).get();

    }









}






