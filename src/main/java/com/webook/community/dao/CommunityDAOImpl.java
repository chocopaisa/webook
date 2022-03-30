package com.webook.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommunityVO;

@Repository("communityDAO")
public class CommunityDAOImpl implements CommunityDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CommunityVO> getBookreportList(CommunityVO vo) {
		System.out.println("===> Mybatis getBookreportList() 호출");
		return mybatis.selectList("CommunityDAO.getBookreportList", vo);
	}
	
}
