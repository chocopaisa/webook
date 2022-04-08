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
		mybatis.insert("member.mapper.insertMember", vo);
	}

	public void updateMember(HashMap map) {
		System.out.println("===> Mybatis updateMember() 호출");
		mybatis.update("member.mapper.updateMember", map);
	}

	public int deleteMember(MemberVO vo) {
		System.out.println("===> Mybatis deleteMember() 호출");
		return mybatis.delete("member.mapper.deleteMember", vo);
	}

	public List<MemberVO> getMemberList(HashMap map) {
		System.out.println("===> Mybatis getMemberList() 호출");
		return mybatis.selectList("member.mapper.getMemberList", map);
	}

	public MemberVO emailfind(MemberVO vo) {
		System.out.println("===> Mybatis emailfind() 호출");
		return mybatis.selectOne("member.mapper.emailfind", vo);
	}
}
