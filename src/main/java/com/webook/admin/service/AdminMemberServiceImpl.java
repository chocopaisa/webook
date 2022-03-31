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
}
