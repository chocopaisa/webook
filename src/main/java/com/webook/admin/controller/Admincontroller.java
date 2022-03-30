package com.webook.admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.admin.service.AdminMemberService;
import com.webook.domain.MemberVO;


@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	 @Autowired
	 private AdminMemberService adminMemberService;

	@RequestMapping("/{step}.do")
	public String dashboard(@PathVariable String step) {
		return "/admin/" + step;		
	}
	
	// 회원 목록 출력	

	 @RequestMapping("/customerManager.do")
	 public void getMemberList(Model m) {
		List<MemberVO> list = adminMemberService.getMemberList();
		if(list.isEmpty())
			System.out.println("가입한 회원이 없습니다.");
		m.addAttribute("memberList", list);
		
	 }
	 
	 // 신고 게시물 출력
	 
	 

}
