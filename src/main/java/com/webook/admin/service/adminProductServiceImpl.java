package com.webook.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.adminProductDAO;
import com.webook.domain.ProductVO;

@Service("adminProductService")
public class adminProductServiceImpl implements adminProductService {

	@Autowired
	private adminProductDAO adminProductDAO;
	
	// 상품 등록
	public void insertProduct(ProductVO vo) {
		adminProductDAO.insertProduct(vo);
	}

	// 재고 목록 출력
	public List<ProductVO> getProductList() {
		return adminProductDAO.getProductList();
	}
}
