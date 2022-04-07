package com.webook.member.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.MemberVO;

public interface MemberService {


	//회원 가입
	public void insertMember(MemberVO vo);
	
	//회원 수정
	public void updateMember(HashMap map);
	
	//회원 탈퇴
	public int deleteMember(MemberVO vo);
	
	// 아이디 찾기
	public MemberVO emailfind(MemberVO vo);
	
}
