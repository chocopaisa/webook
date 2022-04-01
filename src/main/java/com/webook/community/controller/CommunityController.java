package com.webook.community.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webook.community.service.CommunityService;
import com.webook.domain.CommunityVO;

@Controller
@RequestMapping("/community")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/community/"+step;
	}
	
	@RequestMapping("/community/list.do")
	public void getBookreportList(CommunityVO vo, Model model, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		
		model.addAttribute("bookreportList", communityService.getBookreportList(vo, pNum));
		
		/*
		 * model.addAttribute("bookreportCount", communityService.getBookreportCount(vo,
		 * pNum));
		 */
	}
	
	@RequestMapping("/insert.do")
	public String insertBookreport(CommunityVO vo) throws IOException {
		System.out.print(vo.getBookreport_content());
		communityService.insertBookreport(vo);
		return "redirect:list.do";
		
	}
	
	/*
	 * @RequestMapping("/community/write.do") public String writeReport() {
	 * 
	 * return "community/write"; }
	 */
	
	
}
