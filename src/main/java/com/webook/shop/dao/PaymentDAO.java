package com.webook.shop.dao;

import java.util.List;

import com.webook.domain.CouponVO;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;

public interface PaymentDAO {
	public CouponVO searchCoupon(CouponVO vo);
	
	public void insertOrder(OrderVO vo);
	
	public void useCoupon(CouponVO vo);
	
	public void insertOrderItemList(List<OrderItemVO> list);
}
