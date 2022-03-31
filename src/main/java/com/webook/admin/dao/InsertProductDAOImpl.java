package com.webook.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ProductVO;

@Repository("insertProductDAO")
public class InsertProductDAOImpl implements InsertProductDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertProduct(ProductVO vo) {
		mybatis.insert("admin.mapper.insertProduct", vo);
	}
}
