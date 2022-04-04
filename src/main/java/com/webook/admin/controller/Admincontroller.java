package com.webook.admin.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.admin.dao.AdminOrderDAO;
import com.webook.admin.service.AdminCommService;
import com.webook.admin.service.AdminMemberService;
import com.webook.admin.service.AdminOrderService;
import com.webook.admin.service.AdminProductService;
import com.webook.admin.service.AdminService;
import com.webook.domain.AdminVO;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;
import com.webook.domain.ReportcommunityVO;


@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	 @Autowired
	 private AdminMemberService adminMemberService;
	 @Autowired
	 private AdminProductService adminProductService;
	 @Autowired
	 private AdminCommService adminCommService;
	 @Autowired
	 private AdminService adminService;
	 @Autowired
	 private AdminOrderService adminOrderService;
	 
	

	@RequestMapping("/{step}.do")
	public String dashboard(@PathVariable String step) {
		return "/admin/" + step;		
	}
	
	// 관리자 로그인
	@RequestMapping("adminlogin.do")
	public String login(AdminVO vo,HttpSession session ) {
		AdminVO result = adminService.loginCheck(vo);
		if(result==null && result.getAdmin_id()==null) {
			System.out.println("실패"+result.getAdmin_id());
			return "adminindex";
		}else {
			// 관리자 로그인 세션에 저장
			System.out.println("성공"+result.getAdmin_id());
			session.setAttribute("logname", result.getAdmin_id());
			return "redirect:dashboard.do";
		}
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
	 
	 //상품 수량 변경
	 @RequestMapping(value="/update.do", produces = "application/text;charset=utf-8")
	 @ResponseBody
	 public String modifyCount(ProductVO productvo) {		 
		 int result = adminProductService.modifyCount(productvo);
		 if( result == 1) return "입고가 완료되었습니다";
		 return "입고가 완료되지 않았습니다";
	 }
	 
	 // 신고 게시글 목록 출력
	 @RequestMapping("/reportManager.do")
	 public void getReportCommuList(Model m) {
		 List<ReportcommunityVO> list = adminCommService.getReportCommuList();
		 if(list.isEmpty())
			 System.out.println("신고된 게시글이 없습니다.");
		 m.addAttribute("getReportCommuList", list);
	 }
	 
		/*
		 * // 신고된 게시글 삭제
		 * 
		 * @RequestMapping("/deletereport.do")
		 */
	 
	 // 대시보드
	 // 오늘 주문 건수, 오늘 매출, 오늘 게시글 수 조회
	 
	 @RequestMapping(value="dashboard.do", method= {RequestMethod.GET})
	 public String selectTodayOrder( HttpSession session , Model model) {
		 
		 // 오늘 주문건
		 int count = adminOrderService.selectTodayOrder();
		 model.addAttribute("selectTodayOrder",count);
		 
		 // 오늘 매출
		 int sales = adminOrderService.selectTodaySales();
		 model.addAttribute("selectTodaySales", sales);
		 
		 // 오늘 게시글 수
		 int cnt = adminCommService.selectTodayBoard();
		 model.addAttribute("selectTodayBoard", cnt);
		 
		 
		 
		 return "admin/dashboard";
	 }


}















