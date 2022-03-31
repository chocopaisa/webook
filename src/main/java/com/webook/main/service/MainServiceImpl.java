package com.webook.main.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.ProductVO;
import com.webook.main.dao.MainDAO;

@Service("MainService")
public class MainServiceImpl implements MainService{

	@Autowired
	private MainDAO mainDAO;
	
	@Override
	public List<HashMap> showReviews() {
		return mainDAO.showReviews();
	}

	@Override
	public List<ProductVO> showBestSeller() {
		
		return mainDAO.showBestSeller();
	}

	@Override
	public ProductVO showProductOnGenre(ProductVO vo) {
		
		return mainDAO.showProductOnGenre(vo);
	}

}
