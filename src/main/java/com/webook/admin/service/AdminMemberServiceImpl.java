package com.webook.admin.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminMemberDAO;
import com.webook.domain.MemberVO;
import com.webook.member.dao.MemberDAO;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDAO adminMemberDAO;

	public List<MemberVO> getMemberList() {
		return adminMemberDAO.getMemberList();
	}
	
	// 블랙 리스트 출력
	public List<MemberVO> blacklistmem() {
		return adminMemberDAO.blacklistmem();
	}
	
	// 블랙리스트 변경
	public void goblacklist(String[] black) {
		adminMemberDAO.goblacklist(black);
	}
}
