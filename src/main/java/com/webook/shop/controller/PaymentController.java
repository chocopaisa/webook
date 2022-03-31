package com.webook.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductList;
import com.webook.domain.ProductVO;
import com.webook.main.service.MainService;
import com.webook.shop.sevice.PaymentService;

@Controller
@RequestMapping("shop")
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("main.do")
	public String goMain(Model m) {
		//List<ProductVO> bestSellers = mainService.showBestSeller(); // 베스트셀러 15개
		
		//m.addAttribute("bestSellers", bestSellers);
		/*
		 * ProductVO vo = new ProductVO(); // 만화 vo.setGenre_no("210050");
		 * m.addAttribute("manhwa",mainService.showProductOnGenre(vo)); // 소설
		 * vo.setGenre_no("100"); m.addAttribute("novel",
		 * mainService.showProductOnGenre(vo));
		 * 
		 * // 시 vo.setGenre_no("110"); m.addAttribute("poem",
		 * mainService.showProductOnGenre(vo));
		 * 
		 * // 여행 vo.setGenre_no("270"); m.addAttribute("trip",
		 * mainService.showProductOnGenre(vo));
		 * 
		 * // 예술 vo.setGenre_no("210"); m.addAttribute("art",
		 * mainService.showProductOnGenre(vo));
		 */
		
		return "shop/main";
	}
	
	@RequestMapping("cart.do")
	public String goCart() {
		
		return "shop/cart";
	}
	
	// 결제페이지로 이동
	@RequestMapping("payment.do")
	public String goPayment(ProductList productList, Model m) {
		ArrayList<ProductVO> resultList = new ArrayList<>();
		System.out.println(productList.getList().size());
		// 결제 상품리스트 정보 가져오기
		for(ProductVO vo : productList.getList()) {
			if(vo.getProduct_no() == null) {
				continue;
			}
			System.out.println(vo.getProduct_no());
			ProductVO result = paymentService.searchProduct(vo);
			result.setProduct_cnt(vo.getProduct_cnt());
			resultList.add(result);
			
		}
		if(resultList.size() == 0) {
			return "redirect:main.do";
		}
		m.addAttribute("productList", resultList);
		
		return "shop/payment";
	}
	
	
	
	
	
	
}
