package com.webook.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminOrderDAO;
import com.webook.domain.OrderVO;


@Service("adminOrderService")
public class AdminOrderServiceImpl implements AdminOrderService {
	
	@Autowired
	private AdminOrderDAO adminOrderDAO;
	
	// 오늘 주문량 조회
	public int selectTodayOrder() {
		return adminOrderDAO.selectTodayOrder();
	}
	
	// 오늘 매출 조회
	public int selectTodaySales() {
		return adminOrderDAO.selectTodaySales();
	}

}
