package com.webook.member.dao;

import com.webook.domain.MemberVO;

public interface LoginDAO {

	// 아이디 중복체크 기능 구현
	MemberVO idcheck(MemberVO vo);
	
	// 로그인 확인 기능 구현
	MemberVO memberlogin(MemberVO vo);
}
