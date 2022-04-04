package com.webook.mypage.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;

@Repository("MyReportDAO")
public class MyReportDAOImpl implements MyReportDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<HashMap> searchComment(MemberVO vo) {
		
		return mybatis.selectList("myreport.mapper.searchComment", vo);
	}

	@Override
	public List<CommunityVO> searchReport(MemberVO vo) {
		
		return mybatis.selectList("myreport.mapper.searchReport", vo);
	}

}
