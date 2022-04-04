package com.webook.main.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ProductVO;

@Repository("MainDAO")
public class MainDAOImpl implements MainDAO {

	@Autowired
	private SqlSessionTemplate mybatis; 
	
	// 리뷰
	@Override
	public List<HashMap> showReviews() {
		List<HashMap> lst = mybatis.selectList("main.mapper.showReviews");
		return lst;
	}
	
	// 베스트 셀러
	@Override
	public List<ProductVO> showBestSeller() {
		RowBounds rowBounds = new RowBounds(0,15); // 15개
		List<ProductVO> lst = mybatis.selectList("main.mapper.showBestSeller", null, rowBounds);
		return lst;
	}

	// 해당 장르 상품 하나
	@Override
	public ProductVO showProductOnGenre(ProductVO vo) {
		List<ProductVO> lst = mybatis.selectList("product.mapper.genreKo", vo);
		
		return lst.get(0);
	}

	@Override
	public List<ProductVO> showIssueItems() { // 4개
		RowBounds rowBounds = new RowBounds(0,4);
		List<ProductVO> lst = mybatis.selectList("main.mapper.showIssueItems", null, rowBounds);
		return lst;
	}
	
}
