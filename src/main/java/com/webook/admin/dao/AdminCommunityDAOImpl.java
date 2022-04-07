package com.webook.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ReportcommunityVO;

@Repository("adminCommunityDAO")
public class AdminCommunityDAOImpl implements AdminCommunityDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ReportcommunityVO> getReportCommuList() {
		return mybatis.selectList("admin.mapper.getReportCommuList");
	}

	// 신고 게시글 삭제
	public void deleteCommunity(Integer[] list) {
		for( Integer i : list) {
		mybatis.delete("admin.mapper.deleteCommunity", i); 
		}
	}
	  
	 
	@Override
	public int selectTodayBoard() {
		int count = 0;
		count = mybatis.selectOne("admin.mapper.selectTodayBoard");
		return count;
	}
}
