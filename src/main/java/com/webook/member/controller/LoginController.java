package com.webook.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.member.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping("login.do")
	public void login() {
		
	}
	
	@RequestMapping("checkLogin.do")
	public String checkLogin(MemberVO vo, HttpSession session) {
		MemberVO mem = loginservice.checkLogin(vo);
		if(mem.getUser_name() == null) {
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

}
