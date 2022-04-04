package com.webook.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.mypage.service.MyReportService;

@Controller
public class MyReportController {
	
	@Autowired
	private MyReportService myReportService;
	
	@RequestMapping("mypage/report.do")
	public String myReport(Model m, HttpSession session) {
		if(session.getAttribute("user") == null) {
			return "redirect:../login.do";
		}
		MemberVO vo = (MemberVO)session.getAttribute("user");
		m.addAttribute("reports",myReportService.searchReport(vo));
		m.addAttribute("comments",myReportService.searchComment(vo));
		
		return "mypage2/myreport";
	}
}
