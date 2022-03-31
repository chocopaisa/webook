package com.webook.admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.admin.service.AdminMemberService;
import com.webook.admin.service.adminProductService;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;


@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	 @Autowired
	 private AdminMemberService adminMemberService;
	 @Autowired
	 private adminProductService adminProductService;
	

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
		 System.out.println(productvo.getProduct_image());
		 adminProductService.insertProduct(productvo);
		 return "redirect:productManager.do";
	 }
	 
	 // 재고 목록 출력
	 @RequestMapping("/productManager.do")
	 public void getProductList(Model m) {
		 List<ProductVO> list = adminProductService.getProductList();
		 if(list.isEmpty())
			 System.out.println("등록된 상품이 없습니다.");
		 m.addAttribute("productList", list);
	 }
	 
	 

}
