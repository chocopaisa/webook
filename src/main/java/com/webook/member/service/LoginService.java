package com.webook.member.service;

import javax.servlet.http.HttpSession;

import com.webook.domain.MemberVO;

public interface LoginService {

	public MemberVO idcheck(MemberVO vo);
	
	public MemberVO checkLogin(MemberVO vo);

}
