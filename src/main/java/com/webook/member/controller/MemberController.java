package com.webook.member.controller;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("getMemberList.do")
	public void getMemberList(String searchCondition, String searchKeyword, Model m) {
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		System.out.println("searchCondition:" + searchCondition);
		System.out.println("searchKeyword" + searchKeyword);
		
		List<MemberVO> list = memberService.getMemberList(map);
		m.addAttribute("memberList",list);
	}
	
	@RequestMapping("insertMember.do")
	public void insertMember() {
		
	}
	
	@RequestMapping("saveMember.do")
	public String saveMember(MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:getMemberList.do";
	}
	
	@RequestMapping("getMember.do")
	public void getMember(MemberVO vo, Model m) {
		m.addAttribute("member",memberService.getMember(vo));
	}
	
	@RequestMapping("deleteMember.do")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		return "redirect:getMemberList.do";
	}
	
	@RequestMapping("updateMember.do")
	public String updateMember(MemberVO vo) {
		memberService.updateMember(vo);
		return "redirect:getMemberList.do";
	}
	
}
