package com.webook.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminProductDAO;
import com.webook.domain.ProductVO;

@Service("adminProductService")
public class AdminProductServiceImpl implements AdminProductService {

	@Autowired
	private AdminProductDAO adminProductDAO;
	
	// 상품 등록
	public void insertProduct(ProductVO vo) {
		adminProductDAO.insertProduct(vo);
	}

	// 재고 목록 출력
	public List<ProductVO> getProductList() {
		return adminProductDAO.getProductList();
	}
	
	// 상품 수량 변경
	public int modifyCount(ProductVO vo) {
		return adminProductDAO.modifyCount(vo);
	}
}
