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
	
	// 블랙리스트 목록 출력
	public List<MemberVO> blacklistmem() {
		return mybatis.selectList("admin.mapper.blacklistmem");
	}
	
	// 블랙리스트 변경
	public void goblacklist(String[] black) {
		for(String i : black) {
			mybatis.update("admin.mapper.goblacklist",i);
		}
	}
}
