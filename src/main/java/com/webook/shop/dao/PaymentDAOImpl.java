package com.webook.shop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CouponVO;
import com.webook.domain.MemberVO;
import com.webook.domain.OrderItemList;
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
		mybatis.insert("payment.mapper.useCoupon", vo);
		
	}

	@Override
	public void insertOrderItemList(OrderItemList list) {
		mybatis.insert("payment.mapper.insertOrderItemList", list);
		
	}

	@Override
	public List<CouponVO> searchCouponList(CouponVO vo) {
		
		return mybatis.selectList("payment.mapper.searchCoupon", vo);
	}

	// 상품 정보 검색
	@Override
	public ProductVO searchProduct(ProductVO vo) {
		// 상품 mapper 사용 예정
		return mybatis.selectOne("product.mapper.getProduct", vo);
		
	}


	@Override
	public String searchOrderProductName(OrderVO vo) {
		
		return mybatis.selectOne("payment.mapper.searchOrderName",vo);
	}

	@Override
	public CouponVO searchCoupon(CouponVO vo) {
		
		return mybatis.selectOne("payment.mapper.searchCoupon", vo);
	}

	// 배송지 입력
	@Override
	public void insertAddr(MemberVO vo) {
		mybatis.insert("payment.mapper.saveAddr", vo);
		
	}
	
	// 주소 검색
	@Override
	public MemberVO searchAddr(MemberVO vo) {
		
		return mybatis.selectOne("payment.mapper.searchAddr", vo);
	}

}
