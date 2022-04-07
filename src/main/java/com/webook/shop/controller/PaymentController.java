package com.webook.shop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.domain.CouponVO;
import com.webook.domain.MemberVO;
import com.webook.domain.OrderItemList;
import com.webook.domain.OrderItemVO;
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
	
	// 쇼핑몰 메인 페이지
	@RequestMapping("main.do")
	public String goMain(Model m) {
		List<ProductVO> bestSellers = mainService.showBestSeller(); // 베스트셀러 15개
		
		m.addAttribute("bestSellers", bestSellers);
		
		// 상품 카테고리 예시 이미지 가져오기
		ProductVO vo = new ProductVO();
		// 만화
		vo.setGenre_no("210050");
		m.addAttribute("manhwa",mainService.showProductOnGenre(vo));
		
		// 소설
		vo.setGenre_no("100");
		m.addAttribute("novel", mainService.showProductOnGenre(vo));
		
		// 시
		vo.setGenre_no("110");
		m.addAttribute("poem", mainService.showProductOnGenre(vo));
		
		// 여행
		vo.setGenre_no("270");
		m.addAttribute("trip", mainService.showProductOnGenre(vo));
		
		// 예술 
		vo.setGenre_no("210");
		m.addAttribute("art", mainService.showProductOnGenre(vo));
		
		List<ProductVO> issueItems = mainService.showIssueItems();
		m.addAttribute("issueItems", issueItems);
		
		return "shop/main";
	}
	
	// 카트 페이지 이동
	@RequestMapping("cart.do")
	public String goCart(Model m, HttpSession session) {
		// 세션에 저장된 카트 내용 불러오기
		if(session.getAttribute("cart") == null) {
			return "shop/cart";
		}
		ArrayList<ProductVO> lst = (ArrayList<ProductVO>)session.getAttribute("cart");
		
		m.addAttribute("items", lst);
		
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
	
	// 카트에서 다수 삭제
	@RequestMapping("removeCartList.do")
	public String removeCartList(HttpSession session, ProductList productList) {
		ArrayList<ProductVO> cart = (ArrayList<ProductVO>)session.getAttribute("cart");
		ArrayList<ProductVO> removeList = productList.getList();
		for(int i = cart.size()-1; i >= 0; i--) {
			String pno = cart.get(i).getProduct_no();
			
			for(ProductVO remove : removeList) {
				if(pno.equals(remove.getProduct_no())) { 
					// 카트에 들어있는 값이 지우는 리스트와 동일한 경우 지우기
					cart.remove(i);
					
				}
			}
			
		}// lst for end
		if(cart.size() == 0) {
			session.setAttribute("cart", null);
		} else {
			session.setAttribute("cart", cart);
			System.out.println("카트크기"+cart.size());
		}
		return "redirect:cart.do";
	}
	
	
	// 상단 카트 목록에서 삭제 ajax
	@RequestMapping(value="removeCartInHeader.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String removeCartInHeader(HttpSession session, ProductVO vo) {
		ArrayList<ProductVO> cart = (ArrayList<ProductVO>)session.getAttribute("cart");
		String removeNo = vo.getProduct_no();
		for(int i = 0; i < cart.size(); i++) {
			String pno = cart.get(0).getProduct_no();
			if(pno.equals(removeNo)) {
				cart.remove(i);
				break;
			}
		}
		
		if(cart.size() == 0) {
			session.setAttribute("cart", null);
		} else {
			session.setAttribute("cart", cart);
			System.out.println("카트크기"+cart.size());
		}
		
		
		return String.valueOf(cart.size());
	}
	
	
	
	// 카트에서 결제페이지로 이동
	@RequestMapping("payment_list.do")
	public String goPaymentList(ProductList productList, Model m, HttpSession session) {
		System.out.println("결제페이지");
		ArrayList<ProductVO> resultList = new ArrayList<>();
		// 결제 상품리스트 정보 가져오기
		for(ProductVO vo : productList.getList()) {
			// 상품이 올바르지않는 경우 넘김
			if(vo.getProduct_no() == null || vo.getProduct_cnt() <= 0) {
				continue;
			}
			ProductVO result = paymentService.searchProduct(vo);
			result.setProduct_cnt(vo.getProduct_cnt());
			resultList.add(result);
		}
		
		// 카트 내용물이 없는 경우 다시 카트창으로
		if(resultList.size() == 0) {
			return "redirect:cart.do";
		}
		m.addAttribute("productList", resultList);
		
		
		
		if(session.getAttribute("user")!=null) {
			// 사용자의 보유 쿠폰 불러오기
			MemberVO memberVO = (MemberVO)session.getAttribute("user");
			CouponVO couponVO = new CouponVO();
			couponVO.setUser_email(memberVO.getUser_email()); 
			
			List<CouponVO> couponList = paymentService.searchCouponList(couponVO);
			m.addAttribute("coupons", couponList);
			
			// 사용자 주소 불러오기
			MemberVO addrVO = paymentService.searchAddr(memberVO);
			
			if(addrVO!=null) {
				System.out.println("주소 : " + addrVO.getUser_addr());
				if(addrVO.getUser_addr()!= null) {
					String address = addrVO.getUser_addr();
					StringTokenizer st = new StringTokenizer(address,"|"); // | 으로 구분
					Map<String, String> addrMap = new HashMap<String, String>();
					addrMap.put("addr", st.nextToken());
					addrMap.put("detailAddr", st.nextToken());
					m.addAttribute("address", addrMap);
				}
			}			
		}
		
		
		
		return "shop/payment";
	}
	
	// 단일 상품 결제 페이지
	@RequestMapping("payment.do")
	public String goPayment(ProductVO vo, Model m, HttpSession session) {
		// 상품이 올바르지않는 경우 main으로
		if(vo.getProduct_no() == null || vo.getProduct_cnt() <= 0) {
			return "redirect:main.do";
		}
		
		ProductVO result = paymentService.searchProduct(vo);
		System.out.println(result.getProduct_name());
		result.setProduct_cnt(vo.getProduct_cnt());
		ArrayList<ProductVO> resultList = new ArrayList<>();
		resultList.add(result);
		
		m.addAttribute("productList", resultList);
		
		
		// 사용자의 보유 쿠폰 불러오기
		if(session.getAttribute("user")!=null) {
			MemberVO memberVO = (MemberVO)session.getAttribute("user");
			CouponVO couponVO = new CouponVO();
			couponVO.setUser_email(memberVO.getUser_email()); 
					
			List<CouponVO> couponList = paymentService.searchCouponList(couponVO);
			m.addAttribute("coupons", couponList);
			
			// 사용자 주소 불러오기
			MemberVO addrVO = paymentService.searchAddr(memberVO);
						
			if(addrVO!=null) {
				System.out.println("주소 : " + addrVO.getUser_addr());
				if(addrVO.getUser_addr()!= null) {
					String address = addrVO.getUser_addr();
					StringTokenizer st = new StringTokenizer(address,"|"); // | 으로 구분
					Map<String, String> addrMap = new HashMap<String, String>();
					addrMap.put("addr", st.nextToken());
					if(st.hasMoreTokens()) {
						addrMap.put("detailAddr", st.nextToken());
					}
					m.addAttribute("address", addrMap);
				}
			}
			
		}
		
		return "shop/payment";
	}
	
	
	// 상품 가격 확인
	@RequestMapping(value="checkTotalPrice.do", produces="application/json")
	@ResponseBody
	public String checkTotalPrice(@RequestBody ArrayList<Map<String, Object>> list, HttpSession session) {
		System.out.println("받은 리스트 크기 : " + list.size());
		// 결제 상품리스트 정보 가져오기
		Map<String, Object> map = list.get(0);
		
		String order_no = (String)map.get("order_no");
		int totalPrice = ((Integer)map.get("price"));
		
		int delivery_fee = (Integer)map.get("delivery_fee");
		System.out.println("totalPrice : " + totalPrice);
		int realPrice = 0;
		ArrayList<OrderItemVO> orderItemVOList = new ArrayList<OrderItemVO>();
		for(int i =1; i < list.size(); i++) {
			String pno = (String)list.get(i).get("product_no");
			if(pno == null) {
				continue;
			}
			ProductVO vo = new ProductVO();
			vo.setProduct_no(pno);
			ProductVO result = paymentService.searchProduct(vo);
			int price = result.getProduct_price();
			int sale = result.getProduct_sale();
			int cnt = (Integer)list.get(i).get("product_cnt");
			realPrice += ( price - sale) * cnt;
			
			OrderItemVO itemVO = new OrderItemVO();
			itemVO.setOrder_no(order_no);
			itemVO.setProduct_no(pno);
			itemVO.setOrder_cnt(cnt);
			itemVO.setTotal_price((price-sale)*cnt);
			itemVO.setDiscount_price(sale*cnt);
			
			orderItemVOList.add(itemVO);
			
		}
		String user_email = null;
		if(session.getAttribute("user") != null) {
			MemberVO memberVO = (MemberVO)session.getAttribute("user");
			user_email = memberVO.getUser_email();
		}
		
		// 쿠폰 할인가 검색
		int couponPrice = 0;
		CouponVO couponVO = null;
		System.out.println(map.get("coupon_no"));
		if(map.containsKey("coupon_no") && map.get("coupon_no") != null && !map.get("coupon_no").equals("")) {
			
			CouponVO cvo = new CouponVO();
			String coupon_no = (String)map.get("coupon_no");
			cvo.setCoupon_no(coupon_no);
			couponVO = paymentService.searchCoupon(cvo);
			couponPrice = couponVO.getCoupon_discount_price();
			couponVO.setOrder_no(order_no);
		}
		
		System.out.println("realPrice : " + realPrice);
		
		System.out.println("delivery_fee : " + delivery_fee );
		System.out.println("couponPrice : " + couponPrice);
		
		if(totalPrice == realPrice + delivery_fee - couponPrice) {
			// 결제 내용 DB에 넣기
			OrderVO orderVO = new OrderVO();
			
			String delivery_requirements = (String)map.get("delivery_requirements");
			String payment_method = (String)map.get("payment_method");
			String delivery_place = (String)map.get("delivery_place");
			
			orderVO.setOrder_no(order_no);
			orderVO.setDelivery_requirements(delivery_requirements);
			orderVO.setDelivery_fee(delivery_fee);
			orderVO.setPayment_method(payment_method);
			orderVO.setDelivery_place(delivery_place);
			orderVO.setUser_email(user_email);
			OrderItemList orderItemList = new OrderItemList();
			orderItemList.setList(orderItemVOList);
			
			paymentService.insertOrder(orderVO, orderItemList);
			
			// 쿠폰 사용시
			if(couponVO != null) {
				paymentService.useCoupon(couponVO);
			}
			System.out.println("결제성공");
		
			return "200";
		}
		
		System.out.println("결제 실패");
		return "500";
		
	}
	
	
	// 결제
	@RequestMapping("confirmation.do")
	public String buyItems(Model m , OrderVO vo) {
		System.out.println(vo.getOrder_no());
		String productName = paymentService.searchOrderProductName(vo);
		m.addAttribute("productName", productName);
		
		return "shop/confirmation";
	}
	
	// 배송지 저장
	@RequestMapping(value="saveAddr.do",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String saveAddr(MemberVO vo, HttpSession session) {
		if(vo.getUser_addr()!= null && session.getAttribute("user") != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			System.out.println("배송지 저장");
			vo.setUser_email(user.getUser_email());
			paymentService.insertAddr(vo);;
		}
		return "성공";
	}
	
	
	
}
