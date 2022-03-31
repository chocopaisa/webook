package com.webook.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.MemberVO;
import com.webook.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping("login.do")
	public void login() {
		
	}
	
	@RequestMapping("checkLogin.do")
	public String checkLogin(MemberVO vo) {
		loginservice.checkLogin(vo);
		return "redirect:main.do";
	}

}
