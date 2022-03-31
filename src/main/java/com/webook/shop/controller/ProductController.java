package com.webook.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductVO;
import com.webook.shop.sevice.ProductService;

@Controller
@RequestMapping("/shop")
public class ProductController {
	
	@Autowired
	private ProductService service;

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/shop/" + step;
	} 
	
	//페이징
	/*
	 * @RequestMapping("shop_korean.do") public void pageList(ProductVO vo, int
	 * pnum, Model m) { m.addAttribute("productList",service.productList(vo, pnum));
	 * service.productList("", pnum) service.productList	(vo, pnum); }
	 */
	
	//한국도서 장르별 이동
	@RequestMapping("shop_korean.do")
	public String genreKo(ProductVO vo, String pnum, Model m) {
		vo.setProduct_lang("국내"); // 국내 도서만 나오게 하기
		List<ProductVO> result = service.genreKo(vo, pnum);
		m.addAttribute("products", result);
		
		 return "/shop/shop_korean";
	}
	
	
	//해외도서 장르별 이동
	@RequestMapping("shop_foreign.do")
	public String genreFo (ProductVO vo, String pnum, Model m) {
		vo.setProduct_lang("해외"); // 해외 도서만 나오게
		List<ProductVO> result = service.genreFo(vo, pnum);
		m.addAttribute("products", result);
		return "/shop/shop_foreign";
	}
	
	//상세페이지 이동
	@RequestMapping("product_single.do")
	public String getProduct(ProductVO vo, Model m) {
		System.out.println(vo.getProduct_no());
		service.getProduct(vo);
		m.addAttribute("product", service.getProduct(vo));
	
		return "/shop/product_single";
	}
	
	//도서 검색
	@RequestMapping("shop_koreana.do")
	public String productSearch(ProductVO vo, String pnum, Model m) {
		List<ProductVO> result = service.genreKo(vo,pnum);
		m.addAttribute("products", result);
		
		 return "/shop/shop_korean";
	}
	
	@RequestMapping("addCart.do")
	public String addCart(ProductVO vo, HttpSession session) {
		ArrayList<ProductVO> list = null;
		if(session.getAttribute("cart") ==null) {
			list = new ArrayList<ProductVO>();
		}  else {
			list =	(ArrayList<ProductVO>)session.getAttribute("cart");
		}
		list.add(vo);
		session.setAttribute("cart", list);
		ArrayList<ProductVO> r = (ArrayList<ProductVO>)session.getAttribute("cart");
		System.out.println(r.get(0).getProduct_no());
		return "redirect:product_single.do?product_no=" + vo.getProduct_no();
	}
	
	
	
	/*-> 콘솔에서 매퍼 잘 나오는지 확인해보는 거 List를 result로 받아서 돌려보기
	 * @RequestMapping("shop_korean.do") public String test(ProductVO vo, Model m) {
	 * System.out.println("shop_korean");  -> 컨트롤러 함수 되는 지 확인
	 *  System.out.println(vo.getGenre_no()); 파라미터 넘어오는지 확인
	 * vo.setProduct_lang("국내"); -> 국내 도서만 나오게 하기
	 *  List<ProductVO> result = service.test(vo); -> 서비스와 다오에서 리턴한 값 받기
	 * System.out.println("상품이름 " + vo.getGenre_no());
	 * 
	 * for(ProductVO a : result) { System.out.println("상품이름 : " +  a.getProduct_name()); }       -> 받은 리턴값으로 for문 돌려서 다 나오는 지 확인                    
	 * 
	 * m.addAttribute("product", result); return "/shop/shop_korean"; }

	 *
	 */
	
}
