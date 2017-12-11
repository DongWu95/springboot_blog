package com.wpd.NewBlog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class NewBlogApplication {

	public static void main(String[] args) {
		SpringApplication.run(NewBlogApplication.class, args);
	}
}
