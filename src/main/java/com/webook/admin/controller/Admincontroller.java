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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	 
	

	// 관리자 인덱스
	 @RequestMapping("adminindex.do")
	 public String goAdmin(Model m) {
		 return "admin/adminindex";
	 }
	 
	// 관리자 로그인
	@RequestMapping("adminlogin.do")
	public String login(AdminVO vo,HttpSession session, RedirectAttributes redirect) {
		AdminVO result = adminService.loginCheck(vo);
		if(result==null) {
			redirect.addFlashAttribute("msg","logtest");
			return "redirect:adminindex.do";
		}else {
			// 관리자 로그인 세션에 저장
			AdminVO admin = new AdminVO();
			admin.setAdmin_id(result.getAdmin_id());
			admin.setAdmin_pass(result.getAdmin_pass());
			session.setAttribute("logname", result.getAdmin_id());
			AdminVO avo = (AdminVO)session.getAttribute("admin");
			
			return "redirect:dashboard.do";
		}
	}
	
	// DASHBOARD
	// 오늘 주문 건수, 오늘 매출, 오늘 게시글 수 조회
	@RequestMapping(value="dashboard.do", method= {RequestMethod.GET})
	public String DashChartManager(HttpSession session, Model m) {
		if(session.getAttribute("logname") == null) return "admin/adminindex";
		// 오늘 주문건
		 int count = adminOrderService.selectTodayOrder();
		 m.addAttribute("selectTodayOrder",count);
		 
		 // 오늘 매출
		 Integer sales = adminOrderService.selectTodaySales();
		 m.addAttribute("selectTodaySales", sales);
		 
		 // 오늘 게시글 수
		 int cnt = adminCommService.selectTodayBoard();
		 m.addAttribute("selectTodayBoard", cnt);

	
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
		 // 지난주 일일 매출 끝
		 
	// 월별 회원가입 수

		 List<ChartVO> MonthMemCnt = adminService.MonthMemCnt();
	
		 Gson gson2 = new Gson();
		 JsonArray jArray2 = new JsonArray();
	
		 Iterator<ChartVO> cvo2 = MonthMemCnt.iterator();
	
		 while(cvo2.hasNext()) {
			 ChartVO chartvo2 = cvo2.next();
			 JsonObject object2 = new JsonObject();
			 String MonthList = chartvo2.getChartTitle();
			 int NewMemCnt = chartvo2.getChartResult();
	
			 object2.addProperty("MonthList", MonthList);
			 object2.addProperty("NewMemCnt", NewMemCnt);
			 jArray2.add(object2);
		 }
	
		 String json2 = gson2.toJson(jArray2);
		 m.addAttribute("json2", json2);
		 // 월별 회원가입 수 끝
		 
	 return "admin/dashboard";
	}
	
	// Chart	
	@RequestMapping("charts.do")
	public String ChartManager(HttpSession session,Model m) {
		if(session.getAttribute("logname") == null) return "admin/adminindex";
		// 월별 매출
		 List<ChartVO> MonthSales = adminService.MonthSales();
	
		 Gson gson3 = new Gson();
		 JsonArray jArray3 = new JsonArray();
	
		 Iterator<ChartVO> cvo3 = MonthSales.iterator();
	
		 while(cvo3.hasNext()) {
			 ChartVO chartvo3 = cvo3.next();
			 JsonObject object3 = new JsonObject();
			 String MonthListname = chartvo3.getChartTitle();
			 int MonthMoney = chartvo3.getChartResult();
	
			 object3.addProperty("MonthListname", MonthListname);
			 object3.addProperty("MonthMoney", MonthMoney);
			 jArray3.add(object3);
		 }
	
		 String json3 = gson3.toJson(jArray3);
		 System.out.println(json3 + "월월월");
		 m.addAttribute("json3", json3);

		 // 월별 매출 끝
	
	// 카테고리별 매출

		 List<ChartVO> TopCategory = adminService.TopCategory();
	
		 Gson gson4 = new Gson();
		 JsonArray jArray4 = new JsonArray();
	
		 Iterator<ChartVO> cvo4 = TopCategory.iterator();
	
		 while(cvo4.hasNext()) {
			 ChartVO chartvo4 = cvo4.next();
			 JsonObject object4 = new JsonObject();
			 String CategoryName = chartvo4.getChartTitle();
			 int CategorySales = chartvo4.getChartResult();
			 object4.addProperty("CategoryName", CategoryName);
			 object4.addProperty("CategorySales", CategorySales);
			 jArray4.add(object4);
		 }
	
		 String json4 = gson4.toJson(jArray4);
		 m.addAttribute("json4", json4); 
		 
	// 연령대 별 가입자 수
		 
		 List<ChartVO> AgeNewMember = adminService.AgeNewMember();
			
		 Gson gson5 = new Gson();
		 JsonArray jArray5 = new JsonArray();
	
		 Iterator<ChartVO> cvo5 = AgeNewMember.iterator();
	
		 while(cvo5.hasNext()) {
			 ChartVO chartvo5 = cvo5.next();
			 JsonObject object5 = new JsonObject();
			 String AgeName = chartvo5.getChartTitle();
			 int AgeSales = chartvo5.getChartResult();
			 object5.addProperty("AgeName", AgeName);
			 object5.addProperty("AgeSales", AgeSales);
			 jArray5.add(object5);
		 }
	
		 String json5 = gson5.toJson(jArray5);
		 m.addAttribute("json5", json5);
		 
		 return "admin/charts"; 
		 
	}
	
	// 회원 목록 출력	

	 @RequestMapping("/customerManager.do")
	 public String getMemberList(HttpSession session,Model m) {
		 if(session.getAttribute("logname") == null) return "admin/adminindex";
		List<MemberVO> list = adminMemberService.getMemberList();
		if(list.isEmpty())
			System.out.println("가입한 회원이 없습니다.");
		m.addAttribute("memberList", list);
		
		return "admin/customerManager"; 
	 }
	 
	 // 상품 등록하고 DB에 저장
	 @RequestMapping("/saveProduct.do")
	 public String insertProduct(HttpSession session,ProductVO productvo) {
		 if(session.getAttribute("logname") == null) return "admin/adminindex";
		 System.out.println(productvo.getProduct_image());
		 adminProductService.insertProduct(productvo);
		 return "redirect:productManager.do";
	 }
	 
	 // 재고 목록 출력
	 @RequestMapping("/productManager.do")
	 public String getProductList(HttpSession session,Model m) {
		 if(session.getAttribute("logname") == null) return "admin/adminindex";
		 List<ProductVO> list = adminProductService.getProductList();
		 if(list.isEmpty())
			 System.out.println("등록된 상품이 없습니다.");
		 m.addAttribute("productList", list);
		 
		 return "admin/productManager"; 
	 }
	 
	 //상품 수량 변경
	 @RequestMapping(value="/update.do", produces = "application/text;charset=utf-8")
	 @ResponseBody
	 public String modifyCount(ProductVO productvo) {		 
		 int result = adminProductService.modifyCount(productvo);
		 if( result == 1) return "입고가 완료되었습니다";
		 return "입고가 완료되지 않았습니다";
	 }
	 
	 //상품등록 버튼 눌러서 이동
		 @RequestMapping("productRegistration.do")
		 public String productRegistration() {
			 return "admin/productRegistration";
		 }
	 
	 // 신고 게시글 목록 출력
	 @RequestMapping("/reportManager.do")
	 public String getReportCommuList(HttpSession session,Model m) {
		 if(session.getAttribute("logname") == null) return "admin/adminindex";
		 List<ReportcommunityVO> list = adminCommService.getReportCommuList();
		 if(list.isEmpty())
			 System.out.println("신고된 게시글이 없습니다.");
		 m.addAttribute("getReportCommuList", list);
		 
		 return "admin/reportManager";  
	 }
	 
		
	 // 신고된 게시글 삭제		 
	 @RequestMapping("/deletereport.do")
	 public String deleteCommunity(Integer[] rep_article_no) {		 	
		 	 for(Integer i : rep_article_no) {
		 		 System.out.println("i>>>" + i);
		 	 }	 
			 adminCommService.deleteCommunity(rep_article_no);
		return "redirect:reportManager.do";
	 } 
		 
	 // 회원 블랙리스트 출력
	@RequestMapping("/blacklist.do")
	 public String blacklistmem(HttpSession session,Model m) {
		 if(session.getAttribute("logname") == null) return "admin/adminindex";
		List<MemberVO> list = adminMemberService.blacklistmem();
		if(list.isEmpty())
			System.out.println("블랙리스트 회원이 없습니다.");
		m.addAttribute("blackList", list);
		
		return "admin/blacklist"; 
	 }
	
	// 블랙리스트 변경
	@RequestMapping("/goblacklist.do")
	 public String goblacklist(String[] user_email) {		 	
		 	 for(String i : user_email) {
		 		 System.out.println("i>>>" + i);
		 	 }	 
			 adminMemberService.goblacklist(user_email);
		return "redirect:customerManager.do";
	 }
}















