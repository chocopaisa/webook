package com.webook.shop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CouponVO;
import com.webook.domain.MemberVO;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;
import com.webook.domain.ProductVO;

@Repository("PaymentDAO")
public class PaymentDAOImpl implements PaymentDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertOrder(OrderVO vo) {
		mybatis.insert("payment.mapper.insertOrder", vo);
		
	}

	@Override
	public void useCoupon(CouponVO vo) {
		
		
	}

	@Override
	public void insertOrderItemList(List<OrderItemVO> list) {
		mybatis.insert("payment.mapper.insertOrderItemList", list);
		
	}

	@Override
	public CouponVO searchCoupon(CouponVO vo) {
		
		return mybatis.selectOne("payment.mapper.searchCoupon", vo);
	}

	// 상품 정보 검색
	@Override
	public ProductVO searchProduct(ProductVO vo) {
		// 상품 mapper 사용 예정
		
		return mybatis.selectOne("product.mapper.getProduct", vo);
	}

	@Override
	public void insertAddr(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

}
