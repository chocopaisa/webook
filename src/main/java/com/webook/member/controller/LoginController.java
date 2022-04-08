package com.webook.member.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
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
	public void login(HttpServletRequest request, HttpSession session) {
		String referer = request.getHeader("Referer");
		System.out.println(referer.indexOf("login.do"));
		if(referer.indexOf("login.do") < 0 && referer.indexOf("join.do") < 0 && referer.indexOf("emailfind.do") < 0 && referer.indexOf("webook") >= 0) {
			session.setAttribute("prevPage", referer);
		}
		
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
		
		String redirectUrl = (String) session.getAttribute("prevPage");
		if(redirectUrl==null) {
			return "redirect:main.do";
		} else {
			return "redirect:" + redirectUrl;
		}
	
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request, MemberVO vo, HttpSession session) {
		
		String referer = request.getHeader("Referer");
		System.out.println(referer);
		session.setAttribute("prevPage", referer);
		String redirectUrl = (String) session.getAttribute("prevPage");
		session.invalidate();
		if(redirectUrl==null) {
			return "redirect:main.do";
		} else {
			
			return "redirect:" + redirectUrl;
		}
		
	
	}
	
}
