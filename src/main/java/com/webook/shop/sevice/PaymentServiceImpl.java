package com.webook.shop.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.CouponVO;
import com.webook.domain.OrderItemList;
import com.webook.domain.OrderItemVO;
import com.webook.domain.OrderVO;
import com.webook.domain.ProductVO;
import com.webook.shop.dao.PaymentDAO;

@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDAO paymentDAO;
	
	@Override
	public void insertOrder(OrderVO vo, OrderItemList list) {
		
		paymentDAO.insertOrder(vo); 
		paymentDAO.insertOrderItemList(list);
		
	}

	@Override
	public void useCoupon(CouponVO vo) {
		//paymentDAO.useCoupon(vo);
	}

	@Override
	public void insertAddr() {
		
		
	}
	
	@Override
	public ProductVO searchProduct(ProductVO vo) {
		return paymentDAO.searchProduct(vo);
	}

	@Override
	public String searchOrderProductName(OrderVO vo) {
		
		return paymentDAO.searchOrderProductName(vo);
	}
	
	

}
