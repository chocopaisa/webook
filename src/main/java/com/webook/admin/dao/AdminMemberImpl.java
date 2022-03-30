package com.webook.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.MemberVO;

@Repository("adminMemberDAO")
public class AdminMemberImpl implements AdminMemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<MemberVO> getMemberList() {
		return mybatis.selectList("admin.mapper.getMemberList");
	}
	
	
}
