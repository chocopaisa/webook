package com.webook.main.controller;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductVO;
import com.webook.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	
	// main 화면 보여주가
	@RequestMapping("main.do")
	public String showMain(Model m) {
		List<HashMap> reviews = mainService.showReviews(); // 리뷰 
		List<ProductVO> bestSellers = mainService.showBestSeller(); // 베스트셀러 15개
		
		m.addAttribute("bestSellers", bestSellers);
		
		return "index";
	}
}
