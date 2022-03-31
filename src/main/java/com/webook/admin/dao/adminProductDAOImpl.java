package com.webook.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.ProductVO;

@Repository("adminProductDAO")
public class adminProductDAOImpl implements adminProductDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 상품 등록
	public void insertProduct(ProductVO vo) {
		mybatis.insert("admin.mapper.insertProduct", vo);
	}
	
	// 재고 목록 출력
	public List<ProductVO> getProductList() {
		return mybatis.selectList("admin.mapper.getProductList");
	}
}
