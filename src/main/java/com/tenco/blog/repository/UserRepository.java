package com.tenco.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tenco.blog.model.User;

//@Repository // 여기서는 생략 가능 - 이유는 JpaRepository에서 포함되어 있어 생략 가능하다.
public interface UserRepository extends JpaRepository<User, Integer> {
	
	// select, selectAll, insert, update, delete 등
	
	// Spring JPA 네이밍 전략
	// 메서드 이름으로 JPA 쿼리를 만들어 준다. (규칙을 지킨다면)
	// SELECT * FROM user WHERE username = ? AND password = ?;
	User findByusernameAndPassword(String username, String password);
	
}
