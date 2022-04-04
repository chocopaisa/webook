package com.webook.admin.service;

import com.webook.domain.OrderVO;

public interface AdminOrderService {
	
	// 오늘 주문량 조회
	int selectTodayOrder();
	
	// 오늘 매출 조회
	int selectTodaySales();

}
