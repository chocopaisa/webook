package com.webook.admin.service;

import com.webook.domain.OrderVO;

public interface AdminOrderService {
	
	// 오늘 주문량 조회
	void selectTodayOrder(OrderVO vo);

}
