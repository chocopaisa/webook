package com.webook.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.MemberVO;
import com.webook.member.dao.MemberDAO;

@Service("memberService")
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public List<MemberVO> getMemberList(HashMap map) {
		return memberDAO.getMemberList(map);
	}
}
