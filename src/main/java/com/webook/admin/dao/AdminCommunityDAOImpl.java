package com.webook.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ReportcommunityVO;

@Repository("adminCommunityDAO")
public class AdminCommunityDAOImpl implements AdminCommunityDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ReportcommunityVO> getReportCommuList() {
		return mybatis.selectList("admin.mapper.getReportCommuList");
	}

	/*
	 * public void Deletecommu(ReportcommunityVO vo) {
	 * mybatis.delete("admin.mapper.deleteCommunity"); }
	 */

}
