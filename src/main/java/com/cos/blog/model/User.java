package com.cos.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity // User 클래스가 MySQL에 테이블이 생성이 된다.
public class User {

	@Id // Primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //프로젝트에서 연결된 DB의 넘버링 전략을 따라감
	private int id; // 시퀀스, auto_increment
	
	@Column(nullable = false, length=100, unique = true)
	private String username; // 유저 아이디
	
	@Column(nullable = false, length=100)
	private String password; // 유저 비밀번호
	
	@Column(nullable = false, length=50)
	private String email; // 유저 이메일
	
//	@ColumnDefault("user")
	@Enumerated(EnumType.STRING)
	private RoleType role; // ADMIN , USER
	
	// 사용자가 카카오로그인 인지 다른 로그인인지 확인
	private String oauth;
	
	
	@CreationTimestamp//시간이 자동 입력
	private Timestamp createDate;
	
	
	
}
