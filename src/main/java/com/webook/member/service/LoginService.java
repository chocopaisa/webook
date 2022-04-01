package com.webook.member.service;

import com.webook.domain.MemberVO;

public interface LoginService {

	public MemberVO idcheck(MemberVO vo);
	
	public MemberVO checkLogin(MemberVO vo);

	public MemberVO logout(MemberVO vo);
}
