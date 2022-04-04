package com.webook.shop.sevice;

import java.util.List;

import com.webook.domain.CouponVO;
import com.webook.domain.MemberVO;
import com.webook.domain.OrderItemList;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;
import com.webook.domain.ProductVO;

public interface PaymentService {
	
	// 주문넣기
	public void insertOrder(OrderVO vo, OrderItemList list);
	
	// 쿠폰 사용
	public void useCoupon(CouponVO vo);
	
	// 상품 검색
	public ProductVO searchProduct(ProductVO vo);
 
	// 상품명 검색
	public String searchOrderProductName(OrderVO vo);
	
	// 여러 쿠폰 정보 검색
	public List<CouponVO> searchCouponList(CouponVO vo);
	
	// 단일 쿠폰 정보 검색
	public CouponVO searchCoupon(CouponVO vo);
	
	// 사용자 주소 검색
	public MemberVO searchAddr(MemberVO vo);
	
	// 배송지 넣기 
	public void insertAddr(MemberVO vo);
}
