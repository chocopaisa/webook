package com.webook.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webook.community.service.CommunityService;
import com.webook.domain.CommunityVO;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/community/list.do")
	public void getBookreportList(CommunityVO vo, Model model, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		
		model.addAttribute("bookreportList", communityService.getBookreportList(vo, pNum));
		
		/*
		 * model.addAttribute("bookreportCount", communityService.getBookreportCount(vo,
		 * pNum));
		 */
	}
	
	
	
	
	
}
