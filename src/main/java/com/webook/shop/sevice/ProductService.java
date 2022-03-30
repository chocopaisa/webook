package com.webook.shop.sevice;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.ProductVO;





public interface ProductService {
	
	// 상품 목록
	List<ProductVO> productList (ProductVO vo, int pnum);
	
	// 상품 검색
	void productSearch(ProductVO vo);
	
	//상세페이지 클릭
	void getProduct (ProductVO vo);
	//해외도서로 이동
	void productChangeEn (ProductVO vo);
	//국내도서로 이동
	void productChangeKo (ProductVO vo);
}
