package com.webook.shop.dao;




import java.util.List;

import com.webook.domain.ProductVO;



public interface ProductDAO {


	//상세페이지 클릭
	public ProductVO getProduct (ProductVO vo);
	//해외도서로 이동
	public List<ProductVO> genreFo (ProductVO vo, int pnum);
	//국내도서로 이동
	public List<ProductVO> genreKo(ProductVO vo, int pnum);
	
	  
}
 