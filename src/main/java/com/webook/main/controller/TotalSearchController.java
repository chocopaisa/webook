package com.webook.main.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.community.service.CommunityService;
import com.webook.domain.CommunityVO;
import com.webook.domain.ProductVO;
import com.webook.main.service.MainService;
import com.webook.main.service.SearchService;
import com.webook.main.service.SearchServiceImpl;
import com.webook.shop.sevice.ProductService;

@Controller

public class TotalSearchController {
	@Autowired
	private ProductService product;
	@Autowired
	private SearchService main;


	/*통합 검색*/
	@RequestMapping("total_search.do")
	public String totalSearch (ProductVO vo, String pnum, Model m) {

		//한줄평 검색
		List<HashMap> reviews = main.getReviews(vo, pnum); // 리뷰 
		for(int idx = reviews.size()-1; idx >= 0; idx--) {
			String content = (String) reviews.get(idx).get("BOOKREPORT_CONTENT");
			System.out.println(content);
			int start = content.indexOf("<blockquote>");
			if(start < 0) {
				continue;
			}
			int end = content.indexOf("</blockquote>");
			reviews.get(idx).put("BOOKREPORT_CONTENT",content.substring(start + 12, end));
			System.out.println(content.substring(start + 12, end));
		}

		// 도서 검색
		List<ProductVO> result = main.bookSearch(vo,pnum);

		m.addAttribute("reviews", reviews);
		m.addAttribute("products", result);

		return "/total_search";
	}


	// 도서 ajax
	@RequestMapping("bookList.do")
	@ResponseBody
	public List<ProductVO> bookAddBtn (ProductVO vo, String pnum) {
		List<ProductVO> list = main.bookSearch(vo,pnum);
		return list;
	}
	
	@RequestMapping("reviewList.do")
	@ResponseBody
	public List<HashMap> reviewAddBtn (ProductVO vo, String pnum) {
		List<HashMap> reviews = main.getReviews(vo, pnum); // 리뷰 
		for(int idx = reviews.size()-1; idx >= 0; idx--) {
			String content = (String) reviews.get(idx).get("BOOKREPORT_CONTENT");
			System.out.println(content);
			int start = content.indexOf("<blockquote>");
			if(start < 0) {
				continue;
			}
			int end = content.indexOf("</blockquote>");
			reviews.get(idx).put("BOOKREPORT_CONTENT",content.substring(start + 12, end));
			System.out.println(content.substring(start + 12, end));
		}
		return reviews;
	}
	
}
