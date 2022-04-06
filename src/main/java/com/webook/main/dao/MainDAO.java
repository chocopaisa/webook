package com.webook.main.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommunityVO;
import com.webook.domain.ProductVO;

public interface MainDAO {
	public List<HashMap> showReviews();
	
	public List<ProductVO> showBestSeller();
	
	public ProductVO showProductOnGenre(ProductVO vo);
	
	public List<ProductVO> showIssueItems();
	
	public List<HashMap> showReportAtBoard(CommunityVO vo);
	
	public List<HashMap> showReportBest();
}
