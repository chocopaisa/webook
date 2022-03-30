package com.webook.shop.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ProductVO;


@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate session;
	

	//국내 도서로 이동
	@Override
	public List<ProductVO> genreKo(ProductVO vo) {
		System.out.println("test() 함수 호출" );
		 List<ProductVO> result = session.selectList("product.mapper.genreKo",vo);
		 return result;	
	 }
	
	
	@Override
	public List<ProductVO> productList(ProductVO vo) {
			
		
		/*
		 * RowBounds row = new RowBounds(6*(pnum-1),6); List<ProductVO> list =
		 * session.selectList("product.mapper.productList",pnum, row);
		 */

		System.out.println("productList() 호출");
		
		return session.selectList("product.mapper.productList", vo);
	}


	@Override
	public void productSearch(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void productChangeEn(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}




	
		
	}

	

	

