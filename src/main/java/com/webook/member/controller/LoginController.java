package com.webook.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webook.domain.MemberVO;
import com.webook.member.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping("login.do")
	public void login() {
		
	}
	
	@RequestMapping(value="checkId.do", produces = "application/text;charset=utf-8" )
	@ResponseBody
	public String checkId(MemberVO vo) {
		MemberVO result= loginservice.idcheck(vo);
		if(result != null) {
			return "1";
		} 
		return "0";
	}
	
	@RequestMapping("checkLogin.do")
	public String checkLogin(MemberVO vo, HttpSession session, RedirectAttributes redirect) {
		MemberVO mem = loginservice.checkLogin(vo);
		if(mem == null) {
			redirect.addFlashAttribute("fail", 1 );
			return "redirect:login.do";
		}
		MemberVO user = new MemberVO();
		user.setUser_email(mem.getUser_email());
		user.setUser_name(mem.getUser_name());
		session.setAttribute("user", user);
		MemberVO a = (MemberVO)session.getAttribute("user");
		System.out.println(a.getUser_name());
		return "redirect:main.do";
	
	}
	
	@RequestMapping("logout.do")
	public String logout(MemberVO vo, HttpSession session) {

		session.invalidate();
		return "redirect:main.do";
	}
	

}
