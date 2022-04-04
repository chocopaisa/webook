package com.webook.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.OrderVO;


@Repository("adminOrderDAO")
public class AdminOrderDAOImpl implements AdminOrderDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 오늘 주문량 구하기
	@Override
	public int selectTodayOrder() {
		int count = 0;
		count = mybatis.selectOne("admin.mapper.selectTodayOrder");
		return count;
	}
	
	// 오늘 매출액 
	public int selectTodaySales() {
		int count = 0;
		count = mybatis.selectOne("admin.mapper.selectTodaySales");
		return count;
	}
	
}

