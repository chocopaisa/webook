package com.webook.shop.sevice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;
import com.webook.shop.dao.ProductDAOImpl;


@Service("ProducyService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAOImpl productDAO;
	
	
	
	//국내 도서 이동
	@Override
	public List<ProductVO> genreKo(ProductVO vo, String pnum) {
		if(pnum ==null) pnum="1";
		int page = Integer.parseInt(pnum);
		
	
		return productDAO.genreKo(vo,page);
		  
	}
	
	//해외도서 이동


	@Override
	public List<ProductVO> genreFo(ProductVO vo, String pnum) {
	
		if(pnum == null) pnum="1";
		int page = Integer.parseInt(pnum);
		
		System.out.println(page);
		return productDAO.genreFo(vo, page);
	
	}
	
	//상세페이지 책 정보 가져오기
	@Override
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
		
	}
	
	//상세페이지 장르 관련 책 가져오기
	@Override
	public List<ProductVO> getOtherBook(ProductVO vo) {
		return productDAO.getOtherBook(vo);
	}
	// 상세페이지 게시글 가져오기
	@Override
	public List<HashMap> getReport(ProductVO vo) {
		
		return productDAO.getReport(vo);
	}

	@Override
	public List<HashMap> getPurchase(MemberVO vo) {
		
		 return productDAO.getPurchase(vo);
		 
	
		}

	
	
	
	
	
	

	
	

	

	
		
	}

	
	

	
	

	


