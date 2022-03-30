package com.webook.member.dao;

import java.util.HashMap;
import java.util.List;



import org.apache.ibatis.session.SqlSessionException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MemberVO vo) {
		System.out.println("===> Mybatis insertMember() 호출");
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	public void updateMember(MemberVO vo) {
		System.out.println("===> Mybatis updateMember() 호출");
		mybatis.update("MemberDAO.updateMember", vo);
	}

	public void deleteMember(MemberVO vo) {
		System.out.println("===> Mybatis deleteMember() 호출");
		mybatis.delete("MemberDAO.deleteMember", vo);
	}

	public List<MemberVO> getMemberList(HashMap map) {
		System.out.println("===> Mybatis getMemberList() 호출");
		return mybatis.selectList("MemberDAO.getMemberList", map);
	}
}
