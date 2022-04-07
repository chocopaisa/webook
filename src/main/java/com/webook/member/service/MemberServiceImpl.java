package com.webook.member.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.MemberVO;
import com.webook.member.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;

	public void insertMember(MemberVO vo) {
		
		memberDAO.insertMember(vo);
	}

	public void updateMember(HashMap map) {
		
		memberDAO.updateMember(map);
		
	}

	
	public int deleteMember(MemberVO vo) {
	
		return memberDAO.deleteMember(vo);
	}

	public MemberVO emailfind(MemberVO vo) {
		
		return memberDAO.emailfind(vo);
	}

}
