package com.webook.admin.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.MemberVO;

public interface AdminMemberService {
	
	// 멤버 목록 조회
	public List<MemberVO> getMemberList();

	// 블랙리스트 목록 출력
	public List<MemberVO> blacklistmem();
	
	// 블랙리스트 변경
	public void goblacklist(String[] black);

}
