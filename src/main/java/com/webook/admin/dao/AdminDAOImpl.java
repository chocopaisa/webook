package com.webook.admin.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.AdminVO;
import com.webook.domain.ChartVO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public AdminVO loginCheck(AdminVO vo) {
		return mybatis.selectOne("admin.mapper.loginCheck",vo);
	}
	
	// 지난 주 일일 매출
	public List<ChartVO> LastWeekSales() {
		System.out.println("===> LastWeekSales 호출");
		return mybatis.selectList("admin.mapper.LastWeekSales");
	}
	
	// 월별 회원가입 수
	public List<ChartVO> MonthMemCnt() {
		return mybatis.selectList("admin.mapper.MonthMemCnt");
	}

}

