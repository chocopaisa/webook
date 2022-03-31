package com.webook.shop.sevice;

import java.util.List;

import com.webook.domain.CouponVO;
import com.webook.domain.OrderItemList;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;
import com.webook.domain.ProductVO;

public interface PaymentService {
	
	// 주문넣기
	public void insertOrder(OrderVO vo, OrderItemList list);
	
	// 쿠폰 사용
	public void useCoupon(CouponVO vo);
	
	// 배송지 넣기 
	public void insertAddr();
	
	// 상품 검색
	public ProductVO searchProduct(ProductVO vo); 
	
}
