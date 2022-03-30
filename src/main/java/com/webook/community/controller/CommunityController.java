package com.webook.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.community.service.CommunityService;
import com.webook.domain.CommunityVO;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/community/community_list")
	public void getBookreportList(CommunityVO vo, Model model) {
		model.addAttribute("bookreportList", communityService.getBookreportList(vo));
	}
	
}
