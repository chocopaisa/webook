package com.webook.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.service.MemberService;

@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	@RequestMapping("/{step}.do")
	public String dashboard(@PathVariable String step) {
		return "/admin/" + step;		
	}
	
	// 회원 목록 출력
	/*
	 * @Autowired private MemberService memberService;
	 */
	
	/*
	 * @RequestMapping("getMemberList.do") public void getMemberList(MemberVO vo,
	 * Model m) { m.addAttribute("memberList", memberService.getMemberList(vo)); }
	 */

}
