package com.webook.member.controller;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("join.do")
	public void test() {
		
	}
	
	@RequestMapping("userInsert.do")
	public String insertMember(MemberVO vo) {
		memberService.insertMember(vo);
		System.out.println(vo.getUser_email());
		return "redirect:login.do";
	}
	
	//회원가입 정보 저장
	@RequestMapping("userSave.do")
	public String saveMember(MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:getMemberList.do";
	}
	
	// 회원정보 삭제
	@RequestMapping("userDelete.do")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		return "redirect:getMemberList.do";
	}
	
	// 비밀번호 수정
	@RequestMapping("userUpdate.do")
	public String updateMember(MemberVO vo) {
		memberService.updateMember(vo);
		return "redirect:getMemberList.do";
	}
	
}
