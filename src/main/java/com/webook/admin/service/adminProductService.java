package com.webook.admin.service;

import java.util.List;

import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;

public interface adminProductService {

	// 상품 등록
	void insertProduct(ProductVO vo);
	
	// 재고 목록 출력
	public List<ProductVO> getProductList();
}
