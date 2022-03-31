package com.webook.member.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.MemberVO;

public interface MemberService {


	//글 등록
	public void insertMember(MemberVO vo);
	
	//글 수정
	public void updateMember(MemberVO vo);
	
	//글 삭제
	public void deleteMember(MemberVO vo);
	
	
}
