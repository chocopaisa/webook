package com.webook.main.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.ProductVO;

public interface MainService {
	public List<HashMap> showReviews();
	
	public List<ProductVO> showBestSeller();
	
	public ProductVO showProductOnGenre(ProductVO vo);
}
