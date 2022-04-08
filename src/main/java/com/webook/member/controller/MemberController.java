package com.webook.member.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
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

	@RequestMapping("idfind.do")
	public String emailfind(MemberVO vo, RedirectAttributes redirect) {
		MemberVO member = (memberService.emailfind(vo));

		if(member == null) {
			redirect.addFlashAttribute("check", "fail");
			return "redirect:emailfind.do";
		}
		
		String userEmail = member.getUser_email();
		System.out.println("dddd"+member.getUser_email());
		redirect.addFlashAttribute("user_email", userEmail); 
		
		
		 return "redirect:emailfind.do";
	}
	
	@RequestMapping("emailfind.do")
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
		int delCnt = memberService.deleteMember(member);
		if(delCnt==1) {
			System.out.println("결과값");
			session.invalidate();
			return "redirect:../main.do";
		}
		
		System.out.println("결과값이 없음");
		
		return "redirect:signout.do";
	
	}
	
	// 비밀번호 수정
	@RequestMapping("/mypage/userUpdate.do")
	public String updateMember(String user_pass, String new_pass, HttpSession session, RedirectAttributes redirect) {
		HashMap map = new HashMap();
		MemberVO member = (MemberVO)session.getAttribute("user");
		String user_email = member.getUser_email();
		map.put("user_email", user_email);
		map.put("user_pass", user_pass);
		map.put("new_pass", new_pass);
		int result = memberService.updateMember(map);
		System.out.println("비번 변경 결과 여부 : " + result);
		
		redirect.addFlashAttribute("check", result);
		return "redirect:modify.do";
	}
	
}
