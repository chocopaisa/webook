package com.webook.shop.controller;

import java.rmi.server.ServerCloneException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.condition.ProducesRequestCondition;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
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
	
	//도서 검색
	@RequestMapping("shop_search.do")
	public String productSearch(ProductVO vo, String pnum, Model m) {
		List<ProductVO> result = service.genreKo(vo,pnum);
		m.addAttribute("products", result);
		
		 return "/shop/shop_search";
	}
	
	
	
	
	/*상세페이지 관련*/
	
	//상세페이지 이동(책 정보, 독후감, 관련 장르 책)		
	@RequestMapping("product_single.do")
	public String getProduct(ProductVO vo, Model m) {
		
	
		List<ProductVO> result = service.getOtherBook(vo);
		
		List<HashMap>  reviews = service.getReport(vo);
	
		m.addAttribute("product",service.getProduct(vo));
		m.addAttribute("result", result);
		m.addAttribute("reviews", reviews);
		
		return "/shop/product_single";
		
	}



	//장바구니 넣기
	@RequestMapping("addCart.do")
	public String addCart(ProductVO vo, HttpSession session) {
		ArrayList<ProductVO> list = null;
		if(session.getAttribute("cart") == null) {
			list = new ArrayList<ProductVO>();
		}  else {
			list =	(ArrayList<ProductVO>)session.getAttribute("cart");
		}
		//선택한 상품의 정보를 cart에 넣기
		ProductVO result = service.getProduct(vo);
		result.setProduct_cnt(vo.getProduct_cnt());
		list.add(result); 
		session.setAttribute("cart", list);
		ArrayList<ProductVO> r = (ArrayList<ProductVO>)session.getAttribute("cart");
		
	
		return "redirect:cart.do?product_no=" + vo.getProduct_no();
		
	}
	
	
	
	  //마이페이지 구매내역
	  
		
		 @RequestMapping("purchase.do")
		 public String purchase( HttpSession session, Model m) {
			 MemberVO id = (MemberVO)session.getAttribute("user");
			 if(id == null) return "redirect:/login.do";//.do로 하지 말기
		  
			 MemberVO vo = (MemberVO)session.getAttribute("user");
			 List<HashMap> listt = service.getPurchase(vo);
			 m.addAttribute("list",listt);
			 
		  return "/shop/purchase_history";
		  
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
