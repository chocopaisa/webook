package com.webook.shop.sevice;

import java.util.List;

import com.webook.domain.CouponVO;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;

public interface PaymentService {
	
	// 주문넣기
	public void insertOrder(OrderVO vo, List<OrderItemVO> list);
	
	// 쿠폰 사용
	public void useCoupon(CouponVO vo);
	
	// 배송지 넣기 
	public void insertAddr();
	
}
