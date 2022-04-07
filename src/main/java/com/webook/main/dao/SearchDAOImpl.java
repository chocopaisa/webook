package com.webook.main.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductVO;
@Repository("SearchDAO")
public class SearchDAOImpl implements SearchDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public List<HashMap> getReviews(ProductVO vo, int pnum) {
		RowBounds row = new RowBounds(pnum*10,10);
		List<HashMap> list = session.selectList("search.mapper.getReviews", vo, row);
		return list;
		
		
	}


	@Override
	public List<ProductVO> bookSearch(ProductVO vo, int pnum) {
		RowBounds row = new RowBounds(pnum*12,12);
		List<ProductVO> list = session.selectList("product.mapper.genreKo", vo, row);
		return list;
	}

}
