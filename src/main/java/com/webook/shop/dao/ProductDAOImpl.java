package com.webook.shop.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommunityVO;
import com.webook.domain.ProductVO;


@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate session;
	

	//국내 도서로 이동

	@Override
	public List<ProductVO> genreKo(ProductVO vo,int pnum) {
	
		System.out.println("genreKo() 함수 호출" );
		
		RowBounds row = new RowBounds(6*(pnum-1),6);
		 List<ProductVO> result = session.selectList("product.mapper.genreKo",vo, row);
		 return result;	
	 }
	
	//해외도서 이동
	@Override
	public List<ProductVO> genreFo(ProductVO vo, int pnum) {
		System.out.println("genreFo() 함수 호출");
		RowBounds row = new RowBounds(6*(pnum-1),6);
		List<ProductVO> result = session.selectList("product.mapper.genreFo", vo,row);
		return result;
	}
	
	//상세페이지 
	@Override
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("getProduct() 함수 호출");
		return session.selectOne("product.mapper.getProduct", vo);
	}

	@Override
	public List<ProductVO> getOtherBook(ProductVO vo) {
		System.out.println("getOtherBook() 함수 호출");
		return session.selectList("product.mapper.getOtherBook", vo);
	}

	@Override
	public List<CommunityVO> getReport(HashMap map) {
		System.out.println("getReport() 함수 호출");
		/* return session.selectList("product.mapper.getReport", map); */
		return null; 
	}



	




	
		
	}

	

	

