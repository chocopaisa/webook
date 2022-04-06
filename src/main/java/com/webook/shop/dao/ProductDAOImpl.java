package com.webook.shop.dao;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
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
		List<ProductVO> list =  session.selectList("product.mapper.getOtherBook", vo);
		return list;
	}

	@Override
	public List<HashMap> getReport(ProductVO vo) {
		System.out.println("getReport() 함수 호출");
		
		List<HashMap> hash =  session.selectList("product.mapper.getReport", vo);
	
		
		return hash;
		 
	} 

	@Override
	public List<HashMap> getPurchase(MemberVO vo) {
		List<HashMap> list = session.selectList("product.mapper.getPurchase", vo);
			return list;
	}

	@Override
	public List<HashMap> prePurchase(MemberVO vo) {
		List<HashMap> list = session.selectList("product.mapper.prePurchase", vo);
		return list;
	}

	@Override
	public List<HashMap> prePurchase(MemberVO vo, int pnum) {
		RowBounds row = new RowBounds(pnum*3,3);
		List<HashMap> list = session.selectList("product.mapper.prePurchase", vo, row);
		return list;
	}
	



	




	
		
	}

	

	

