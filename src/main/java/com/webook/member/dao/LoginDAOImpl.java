package com.webook.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	@Override
	public MemberVO idcheck(MemberVO vo) {
		MemberVO vi = mybatis.selectOne("login.mapper.checkId", vo);
		return vi;
	}

	@Override
	public MemberVO checkLogin(MemberVO vo) {
		MemberVO va = mybatis.selectOne("login.mapper.login_check", vo); 
		return va;
	}

	@Override
	public MemberVO logout(MemberVO vo) {
		MemberVO vb = mybatis.selectOne("login.mapper.logout", vo);
		return vb;
	}
	
	

}