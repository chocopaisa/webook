package com.webook.shop.sevice;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;





public interface ProductService {
	

	
	// 상품 검색
	
	
	//상세페이지 클릭
	ProductVO getProduct (ProductVO vo);
	//해외도서로 이동
	List<ProductVO> genreFo (ProductVO vo, String pnum);
	//국내도서로 이동
	List<ProductVO> genreKo(ProductVO vo, String pnum);


	// 상세페이지 게시글 가져오기
	List<HashMap> getReport(ProductVO vo);
	
	//상세페이지 장르 관련 책 가져오기
	List<ProductVO> getOtherBook(ProductVO vo);
	
	List<HashMap> getPurchase(MemberVO vo);
	
	List<HashMap> prePurchase(MemberVO vo);
	
	List<HashMap> prePurchase(MemberVO vo, String pnum);
	
	
}
