package com.webook.main.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.ProductVO;

public interface MainDAO {
	public List<HashMap> showReviews();
	
	public List<ProductVO> showBestSeller();
}
