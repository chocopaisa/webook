package com.webook.admin.dao;

import java.util.List;

import com.webook.domain.MemberVO;

public interface AdminMemberDAO {
	// 회원 목록 출력
	public List<MemberVO> getMemberList();
	
	// 블랙리스트 목록 출력
	public List<MemberVO> blacklistmem();
	
	// 블랙리스트로 변경
	public void goblacklist(String[] black);
}
