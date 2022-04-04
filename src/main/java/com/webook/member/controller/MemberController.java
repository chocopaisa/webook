package com.webook.member.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webook.domain.MemberVO;
import com.webook.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("join.do")
	public void test() {

	}

	@RequestMapping("pwfind.do")
	public void test2() {

	}
	
	// 비밀번호 변경 경로
	@RequestMapping("mypage/modify.do")
	public String modify() {
		return "/mypage/passwordupdate";
	}
	
	// 회원탈퇴 경로
	@RequestMapping("mypage/signout.do")
	public String signout() {
		return "/mypage/signout";
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
	@RequestMapping("/mypage/userDelete.do")
	public String deleteMember(MemberVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("user");
		//세션에있는 비밀번호
		String vopassword = vo.getUser_pass();
		member.setUser_pass(vopassword);
		memberService.deleteMember(member);
		session.invalidate();
		return "redirect:../main.do";
	}
	
	// 비밀번호 수정
	@RequestMapping("userUpdate.do")
	public String updateMember(MemberVO vo) {
		memberService.updateMember(vo);
		return "redirect:getMemberList.do";
	}
	
}
