package com.webook.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.CommunityVO;
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
		List<HashMap> resultList = new ArrayList<HashMap>();
		for(int idx = reviews.size()-1; idx >= 0; idx--) {
			String content = (String) reviews.get(idx).get("BOOKREPORT_CONTENT");
			System.out.println(content);
			int start = content.indexOf("<blockquote>");
			if(start < 0) {
				continue;
			}
			int end = content.indexOf("</blockquote>");
			HashMap map = reviews.get(idx);
			map.put("BOOKREPORT_CONTENT", content.substring(start + 12, end));
			resultList.add(map);
			System.out.println(content.substring(start + 12, end));
		}
		m.addAttribute("reviews", resultList);
		List<ProductVO> bestSellers = mainService.showBestSeller(); // 베스트셀러 15개
		
		m.addAttribute("bestSellers", bestSellers);
		
		return "index";
	}
	
	
	@RequestMapping("/community/main.do")
	public String showCommuMain(Model model) {
		
		List<ProductVO> issueList = mainService.showIssueItems();
		model.addAttribute("issueList", issueList);
		
		List<HashMap> bestList = mainService.showReportBest();
		model.addAttribute("bestList", bestList);
		CommunityVO vo = new CommunityVO();
		vo.setReport_kind("만화");
		List<HashMap> manhwaList = mainService.showReportAtBoard(vo);
		model.addAttribute("manhwaList", manhwaList);
		vo.setReport_kind("소설");
		List<HashMap> novelList = mainService.showReportAtBoard(vo);
		model.addAttribute("novelList", novelList);
		vo.setReport_kind("종교");
		List<HashMap> religionList = mainService.showReportAtBoard(vo);
		model.addAttribute("religionList", religionList);
		vo.setReport_kind("여행");
		List<HashMap> travelList = mainService.showReportAtBoard(vo);
		model.addAttribute("travelList", travelList);
		
		return "community/main";
	}
}
