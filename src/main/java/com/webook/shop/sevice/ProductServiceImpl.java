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
	
	
	
	//국내 도서 이동
	@Override
	public List<ProductVO> genreKo(ProductVO vo) {
		return productDAO.genreKo(vo);
		
	}

	@Override
	public List<ProductVO> productList(ProductVO vo) {
	
		return productDAO.productList(vo);
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
	

	
}

