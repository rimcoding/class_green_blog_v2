package com.tenco.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

@Entity
public class Reply {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 250)
	private String content;
	
	// 어느 게시글에 작성된 리플
	// Reply 과 board 연관 관계는 - N:1
	@ManyToOne
	@JoinColumn(name = "board_id")
	private Board board;
	
	// 누가 작성한 리플인지
	// Reply 과 User 연관 관계는 - N:1
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	
	
	@CreationTimestamp
	private Timestamp createdDate;
}
