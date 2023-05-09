package com.tenco.blog.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

@Entity
public class Board {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 100)
	private String title;
	
	@Lob // 대용량 데이터
	private String content;
	
	@ColumnDefault("0") // 숫자형은 - "숫자"
	private int count;
	
	//Board 와 User 관계는 N : 1
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	// 리플에 대한 정보가 없다
	// Board 정보를 가지고 올 때 댓글 정보도 가지고 와야 된다면
	// board 와 Reply 에 관계는 1: N
	@OneToMany(mappedBy = "board", fetch = FetchType.LAZY)	// LAZY : 기본값
	private List<Reply> reply;
	// 주의 : Board 테이블에 reply_id 컬럽이 필요한가 (x)
	// mappedBy 설정하면 board 테이블에 컬럼이 생성되지 않는다.
	// 오브젝트가 생성될 때 즉 데이터를 가지고 올 때 알아서 join  처리
	// 해서 데이터만 가지고 와라
	
	@CreationTimestamp // now()
	private Timestamp createdDate;
	
}
