package com.webook.admin.dao;

import java.util.List;

import com.webook.domain.ProductVO;

public interface adminProductDAO {

	public void insertProduct(ProductVO vo);
	
	public List<ProductVO> getProductList();
}
