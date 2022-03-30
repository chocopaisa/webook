package com.webook.shop.sevice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.ProductVO;
import com.webook.shop.dao.ProductDAOImpl;


@Service("ProducyService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAOImpl productDAO;

	@Override
	public List<ProductVO> productList(ProductVO vo, int pnum) {
	
		return productDAO.productList(vo, pnum);
	}

	@Override
	public void productSearch(ProductVO vo) {
		
		
	}

	@Override
	public void getProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void productChangeEn(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void productChangeKo(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

}
