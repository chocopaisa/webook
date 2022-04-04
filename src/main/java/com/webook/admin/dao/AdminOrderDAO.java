package com.webook.admin.dao;

	

public interface AdminOrderDAO {

	
	// 오늘 주문 건
	public int selectTodayOrder();
	
	// 오늘 매출액
	public int selectTodaySales();
	
}
