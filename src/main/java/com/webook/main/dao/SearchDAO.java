package com.webook.main.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.ProductVO;

public interface SearchDAO {

	List<HashMap> getReviews(ProductVO vo, int pnum);
	
	List<ProductVO> bookSearch(ProductVO vo, int pnum);
}
