package com.webook.admin.controller;



import java.util.Iterator;
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

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.webook.admin.dao.AdminOrderDAO;
import com.webook.admin.service.AdminCommService;
import com.webook.admin.service.AdminMemberService;
import com.webook.admin.service.AdminOrderService;
import com.webook.admin.service.AdminProductService;
import com.webook.admin.service.AdminService;
import com.webook.domain.AdminVO;
import com.webook.domain.ChartVO;
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
	 
	

//	@RequestMapping("/{step}.do")
//	public String dashboard(@PathVariable String step) {
//		return "/admin/" + step;		
//	}
	
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
	
	// DASHBOARD
	// 오늘 주문 건수, 오늘 매출, 오늘 게시글 수 조회
	@RequestMapping(value="dashboard.do", method= {RequestMethod.GET})
	public void DashChartManager(HttpSession session, Model m) {
		// 오늘 주문건
		 int count = adminOrderService.selectTodayOrder();
		 m.addAttribute("selectTodayOrder",count);
		 
		 // 오늘 매출
		 Integer sales = adminOrderService.selectTodaySales();
		 m.addAttribute("selectTodaySales", sales);
		 
		 // 오늘 게시글 수
		 int cnt = adminCommService.selectTodayBoard();
		 m.addAttribute("selectTodayBoard", cnt);

	// 차트
	// 지난주 일일 매출
	
		 List<ChartVO> LastWeekList = adminService.LastWeekSales();
	
		 Gson gson = new Gson();
		 JsonArray jArray = new JsonArray();
	
		 Iterator<ChartVO> cvo = LastWeekList.iterator();
	
		 while(cvo.hasNext()) {
			 ChartVO chartvo = cvo.next();
			 JsonObject object = new JsonObject();
			 String LastWeek = chartvo.getChartTitle();
			 int LastWeekSales = chartvo.getChartResult();
	
			 object.addProperty("LastWeek", LastWeek);
			 object.addProperty("LastWeekSales", LastWeekSales);
			 jArray.add(object);
		 }
	
		 String json = gson.toJson(jArray);
		 m.addAttribute("json", json);
		 
	// 월별 회원가입 수
		 
		 System.out.println("ChartManager 호출 ????");
		 List<ChartVO> MonthMemCnt = adminService.MonthMemCnt();
	
		 Gson gson2 = new Gson();
		 JsonArray jArray2 = new JsonArray();
	
		 Iterator<ChartVO> cvo2 = MonthMemCnt.iterator();
	
		 while(cvo2.hasNext()) {
			 ChartVO chartvo2 = cvo2.next();
			 JsonObject object2 = new JsonObject();
			 String MonthList = chartvo2.getChartTitle();
			 System.out.println(MonthList);
			 int NewMemCnt = chartvo2.getChartResult();
	
			 object2.addProperty("MonthList", MonthList);
			 object2.addProperty("NewMemCnt", NewMemCnt);
			 jArray2.add(object2);
		 }
	
		 String json2 = gson2.toJson(jArray2);
		 m.addAttribute("json2", json2);
	
	}
	@RequestMapping("charts.do")
	public void Chart() {}
	
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


}















