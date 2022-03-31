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
	
	@Override
	public List<HashMap> showReviews() {
		List<HashMap> lst = mybatis.selectList("main.mapper.showReviews");
		return lst;
	}

	@Override
	public List<ProductVO> showBestSeller() {
		RowBounds rowBounds = new RowBounds(0,15);
		List<ProductVO> lst = mybatis.selectList("main.mapper.showBestSeller", null, rowBounds);
		return lst;
	}
	
}