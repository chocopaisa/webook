package com.webook.admin.dao;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public AdminVO loginCheck(AdminVO vo) {
		return mybatis.selectOne("admin.mapper.loginCheck",vo);
	}
	
	public List<HashMap> TodaySales() {
		return mybatis.selectList("admin.mapper.");
	}

}

