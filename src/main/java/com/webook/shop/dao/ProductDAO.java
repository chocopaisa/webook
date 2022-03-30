package com.webook.shop.dao;




import java.util.List;

import com.webook.domain.ProductVO;



public interface ProductDAO {
	// 상품 목록
	public List<ProductVO> productList (ProductVO vo);
	//검색어 검색
	public void productSearch(ProductVO vo);
	//상세페이지 클릭
	public void getProduct (ProductVO vo);
	//해외도서로 이동
	public void productChangeEn (ProductVO vo);
	//국내도서로 이동
	public void productChangeKo (ProductVO vo);
	  
}
 