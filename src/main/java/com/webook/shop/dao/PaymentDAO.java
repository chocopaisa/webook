package com.webook.shop.dao;

import java.util.List;

import com.webook.domain.CouponVO;
import com.webook.domain.MemberVO;
import com.webook.domain.OrderItemList;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;
import com.webook.domain.ProductVO;

public interface PaymentDAO {
	public List<CouponVO> searchCouponList(CouponVO vo);
	
	public void insertOrder(OrderVO vo);
	
	public void useCoupon(CouponVO vo);
	
	public void insertOrderItemList(OrderItemList list);
	
	public void insertAddr(MemberVO vo);
	
	public ProductVO searchProduct(ProductVO vo); 
	
	public String searchOrderProductName(OrderVO vo);
	
	public CouponVO searchCoupon(CouponVO vo);
	
	public MemberVO searchAddr(MemberVO vo);
	
}
