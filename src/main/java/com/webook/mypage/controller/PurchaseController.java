package com.webook.mypage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.domain.MemberVO;
import com.webook.shop.sevice.ProductService;

@Controller
@RequestMapping("/mypage")
public class PurchaseController {

	@Autowired
	private ProductService service;
	
	 
	//현재, 이전 구매 내역
	 @RequestMapping("p_history.do")
	 public String purchas( HttpSession session, Model m) {
		 MemberVO id = (MemberVO)session.getAttribute("user");
		 if(id == null) return "redirect:/login.do";//.do로 하지 말기
	  
		 MemberVO vo = (MemberVO)session.getAttribute("user");
	
		 List<HashMap> lis = service.prePurchase(vo, "0");
		 List<HashMap> listt = service.getPurchase(vo);
			
		 m.addAttribute("list",listt);
		 m.addAttribute("lis", lis);
		 
	  return "/mypage/p_history" ;
	 }
	 
	 //구매내역 더보기 ajax
	 @RequestMapping("purchasList.do")
	 @ResponseBody
	 public List<HashMap> addBtn(String pnum, HttpSession session) {
		 MemberVO vo = (MemberVO)session.getAttribute("user");
		 List<HashMap> list =service.prePurchase(vo, pnum);
		 

		 
		 return list;
	 }

}
