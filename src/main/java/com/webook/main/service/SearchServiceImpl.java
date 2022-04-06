package com.webook.main.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.ProductVO;
import com.webook.main.dao.SearchDAO;
import com.webook.main.dao.SearchDAOImpl;

@Service("SearchService")
public class SearchServiceImpl implements SearchService{

	@Autowired
	private SearchDAOImpl searchDAO;

	@Override
	public List<HashMap> getReviews(ProductVO vo, String pnum) {
		if(pnum == null) pnum = "0";
		int page = Integer.parseInt(pnum);
		List<HashMap> list = searchDAO.getReviews(vo, page);
		return null;
	}



	
	
	
}
