package com.webook.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.InsertProductDAO;
import com.webook.domain.ProductVO;

@Service("insertProductService")
public class InsertProductServiceImpl implements InsertProductService {

	@Autowired
	private InsertProductDAO insertProductDAO;
	
	public void insertProduct(ProductVO vo) {
		insertProductDAO.insertProduct(vo);
	}
}
