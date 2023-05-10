package com.tenco.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tenco.blog.model.User;

//@Repository // 여기서는 생략 가능 - 이유는 JpaRepository에서 포함되어 있어 생략 가능하다.
public interface UserRepository extends JpaRepository<User, Integer> {
	
	// select, selectAll, insert, update, delete 등
	
}
