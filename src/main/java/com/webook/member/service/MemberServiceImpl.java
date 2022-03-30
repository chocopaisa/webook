package com.webook.member.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.webook.domain.MemberVO;
import com.webook.member.dao.MemberDAO;
import com.webook.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;

	public void insertMember(MemberVO vo) {
		
		memberDAO.insertMember(vo);
	}

	public void updateMember(MemberVO vo) {
		
		memberDAO.updateMember(vo);
		
	}

	public void deleteMember(MemberVO vo) {
		
		memberDAO.deleteMember(vo);
		
	}
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	public List<MemberVO> getMemberList(HashMap map) {
		return memberDAO.getMemberList(map);
	}
	
	

}
