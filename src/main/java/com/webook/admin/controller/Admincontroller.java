package com.webook.admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.admin.service.AdminMemberService;
import com.webook.admin.service.InsertProductService;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;


@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	 @Autowired
	 private AdminMemberService adminMemberService;
	 @Autowired
	 private InsertProductService insertProductService;

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
	 
	 // 상품 등록하고 DB에 저장
	 @RequestMapping("/saveProduct.do")
	 public String insertProduct(ProductVO productvo) { 
		 insertProductService.insertProduct(productvo);
		 return "redirect:productRegistration.do";
	 }
	 
	 

}
