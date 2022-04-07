package com.webook.main.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.ProductVO;

public interface SearchService {
	public List<HashMap> getReviews(ProductVO vo, String pnum);
}
