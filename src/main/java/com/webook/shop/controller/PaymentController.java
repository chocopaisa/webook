package com.webook.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.OrderItemList;
import com.webook.domain.OrderVO;
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
		
		// 상품 카테고리 예시 이미지 가져오기
		ProductVO vo = new ProductVO();
		// 만화
		vo.setGenre_no("210050");
		//m.addAttribute("manhwa",mainService.showProductOnGenre(vo));
		
		// 소설
		vo.setGenre_no("100");
		//m.addAttribute("novel", mainService.showProductOnGenre(vo));
		
		// 시
		vo.setGenre_no("110");
		//m.addAttribute("poem", mainService.showProductOnGenre(vo));
		
		// 여행
		vo.setGenre_no("270");
		//m.addAttribute("trip", mainService.showProductOnGenre(vo));
		
		// 예술 
		vo.setGenre_no("210");
		//m.addAttribute("art", mainService.showProductOnGenre(vo));
		
		return "shop/main";
	}
	
	@RequestMapping("cart.do")
	public String goCart(Model m, HttpSession session) {
		if(session.getAttribute("cart") == null) {
			return "shop/cart";
		}
		ArrayList<ProductVO> lst = (ArrayList<ProductVO>)session.getAttribute("cart");
		ArrayList<ProductVO> resultList = new ArrayList<ProductVO>();
		for(ProductVO vo : lst) {
			if(vo.getProduct_no() == null) {
				continue;
			}
			System.out.println(vo.getProduct_no());
			ProductVO result = paymentService.searchProduct(vo);
			result.setProduct_cnt(1);
			System.out.println(result.getProduct_name());
			resultList.add(result);
		}
		m.addAttribute("items", resultList);
		
		return "shop/cart";
	}
	
	// 카트에서 단일 삭제
	@RequestMapping("removeCart.do")
	public String removeCart(HttpSession session, ProductVO vo) {
		ArrayList<ProductVO> lst = (ArrayList<ProductVO>)session.getAttribute("cart");
		String removeNo = vo.getProduct_no();
		for(int i = 0; i < lst.size(); i++) {
			String pno = lst.get(0).getProduct_no();
			if(pno.equals(removeNo)) {
				lst.remove(i);
				break;
			}
		}
		
		if(lst.size() == 0) {
			session.setAttribute("cart", null);
		} else {
			session.setAttribute("cart", lst);
			System.out.println("카트크기"+lst.size());
		}
		return "redirect:cart.do";
	}
	
	// 카트에서 전체 삭제
	@RequestMapping("removeCartList.do")
	public String removeCartList(HttpSession session, ProductList productList) {
		ArrayList<ProductVO> lst = (ArrayList<ProductVO>)session.getAttribute("cart");
		ArrayList<ProductVO> removeList = productList.getList();
		for(int i = lst.size()-1; i >= 0; i--) {
			String pno = lst.get(i).getProduct_no();
			
			for(ProductVO remove : removeList) {
				if(pno.equals(remove.getProduct_no())) { 
					// 카트에 들어있는 값이 지우는 리스트와 동일한 경우 지우기
					lst.remove(i);
					
				}
			}
			
		}// lst for end
		if(lst.size() == 0) {
			session.setAttribute("cart", null);
		} else {
			session.setAttribute("cart", lst);
			System.out.println("카트크기"+lst.size());
		}
		return "redirect:cart.do";
	}
	
	
	// 결제페이지로 이동
	@RequestMapping("payment_list.do")
	public String goPaymentList(ProductList productList, Model m) {
		System.out.println("결제페이지");
		ArrayList<ProductVO> resultList = new ArrayList<>();
		// 결제 상품리스트 정보 가져오기
		for(ProductVO vo : productList.getList()) {
			if(vo.getProduct_no() == null) {
				continue;
			}
			ProductVO result = paymentService.searchProduct(vo);
			result.setProduct_cnt(vo.getProduct_cnt());
			System.out.println(vo.getProduct_name());
			resultList.add(result);
			
		}
		if(resultList.size() == 0) {
			return "redirect:main.do";
		}
		m.addAttribute("productList", resultList);
		
		return "shop/payment";
	}
	
	@RequestMapping("payment.do")
	public String goPayment(ProductVO vo, Model m) {
		if(vo.getProduct_no() == null) {
			return "redirect:main.do";
		}
		ProductVO result = paymentService.searchProduct(vo);
		System.out.println(result.getProduct_name());
		result.setProduct_cnt(vo.getProduct_cnt());
		ArrayList<ProductVO> resultList = new ArrayList<>();
		resultList.add(result);
		
		m.addAttribute("productList", resultList);
		
		return "shop/payment";
	}
	
	
	@RequestMapping("account.do")
	public String buyItems(Model m , OrderVO vo, OrderItemList list) {
		paymentService.insertOrder(vo, list);
		
		
		return "shop/main";
	}
	
	
	
	
}
