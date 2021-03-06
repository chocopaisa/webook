package com.webook.community.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.community.service.CommentService;
import com.webook.community.service.CommunityService;
import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
import com.webook.domain.ProductVO;
import com.webook.domain.ReportcommunityVO;
import com.webook.main.service.MainService;
import com.webook.shop.sevice.ProductService;

@Controller
@RequestMapping("community")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	@Autowired
	private CommentService commentService;
	@Autowired 
	private ProductService productService;
	@Autowired
	private MainService mainService;
	
	// 게시글 목록 검색
	@RequestMapping("list.do")
	public void getBookreportList(CommunityVO vo, Model m, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		List<HashMap> reviews = mainService.showReviews(); // 리뷰 
		List<HashMap> resultList = new ArrayList<HashMap>();
		if(!reviews.isEmpty()) {
			for(int idx = reviews.size()-1; idx >= 0; idx--) {
				String content = (String) reviews.get(idx).get("BOOKREPORT_CONTENT");
				if(content == null) {
					continue;
				}
				int start = content.indexOf("<blockquote>");
				if(start < 0) {
					continue;
				}
				int end = content.indexOf("</blockquote>");
				HashMap map = reviews.get(idx);
				map.put("BOOKREPORT_CONTENT", content.substring(start + 12, end));
				resultList.add(map);
			}
		}
		m.addAttribute("reviews", resultList);
		
		if(vo.getReport_kind() != null && vo.getReport_kind().equals("best")) {
			m.addAttribute("totalCount", communityService.totalPageCount(vo));
			m.addAttribute("bookreportList", communityService.searchBestReportList(pNum));
		} else {
			m.addAttribute("totalCount", communityService.totalPageCount(vo));
			m.addAttribute("bookreportList", communityService.getBookreportList(vo, pNum));
			
		}
		
	}
	// 게시글 등록
	@RequestMapping("insert.do")
	public String insertBookreport(CommunityVO vo, HttpSession session) throws IOException {
		if(session.getAttribute("user") != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			vo.setUser_email(user.getUser_email());
			communityService.insertBookreport(vo);
		
		}
		return "redirect:list.do";
	}
	
	// 게시글 상세 / 댓글
	@RequestMapping("getcontent.do")
	public void getBookreport(CommunityVO vo, Model m, HttpSession session, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		CommunityVO result = communityService.getBookreport(vo);
		CommentVO re = new CommentVO();
		ProductVO pr = new ProductVO();
		CommunityVO reset = new CommunityVO();
		pr.setProduct_no(result.getProduct_no());
		re.setBookreport_no(vo.getBookreport_no());
		reset.setUser_email(result.getUser_email());
		//조회수 증가
		communityService.viewCount(vo);
		//게시글 상세
		m.addAttribute("bookreport", result);
		//상품 상세
		m.addAttribute("product", productService.getProduct(pr));
		// 댓글 목록
		m.addAttribute("commentList", commentService.getCommentList(re, pNum));
		// 좋아요 갯수
		m.addAttribute("jjoa", communityService.countJjoa(vo));
		if(session.getAttribute("user") != null) {
			
		MemberVO user = (MemberVO)session.getAttribute("user");
		result.setUser_email(user.getUser_email());
		m.addAttribute("checkJjoa", communityService.checkJjoa(result));
		}
		result.setUser_email(reset.getUser_email());
	}
	
	//게시글 검색
	@RequestMapping("searchBookreportList.do")
	public String searchBookreportList(String date_select, String search_select, String search_text, Model m, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		System.out.println("검색기능");
		HashMap map = new HashMap();
		map.put("date_select", date_select);
		map.put("search_select", search_select);
		map.put("search_text", search_text);
		List<CommunityVO> list = communityService.searchBookreportList(map, pNum);
		m.addAttribute("bookreportList", list);
		return "/community/list";
		
	}
	
	//게시글 삭제
	@RequestMapping("delete.do")
	public String deleteBookreport(CommunityVO vo, HttpSession session) throws IOException {
		if(session.getAttribute("user") != null) {
		CommentVO re = new CommentVO();
		MemberVO user = (MemberVO)session.getAttribute("user");
		vo.setUser_email(user.getUser_email());
		re.setBookreport_no(vo.getBookreport_no());
		commentService.deleteAllComment(re);
		communityService.deleteBookreport(vo);
		}
		return "redirect:list.do";
		
	} 
	
	
	
	//댓글 목록 ajax
	@RequestMapping("getCommentList.do")
	@ResponseBody
	public List<CommentVO> getCommentList(CommunityVO vo, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		CommunityVO result = communityService.getBookreport(vo);
		CommentVO re = new CommentVO();
		re.setBookreport_no(vo.getBookreport_no());
		return commentService.getCommentList(re, pNum);
	}
	
	// 댓글 작성
	@RequestMapping(value="insertComment.do" )
	@ResponseBody
	public void insertComment(CommentVO vo, HttpSession session) throws IOException {
		if(session.getAttribute("user") != null) {
		MemberVO user = (MemberVO)session.getAttribute("user");
		vo.setUser_email(user.getUser_email());
		commentService.insertComment(vo);
		}
		
	}
	
	//댓글 개별 삭제
	@RequestMapping("deleteComment.do")
	@ResponseBody
	public void deleteComment(CommentVO vo, HttpSession session) throws IOException {
		if(session.getAttribute("user") != null) {
		MemberVO user = (MemberVO)session.getAttribute("user");
		vo.setUser_email(user.getUser_email());
		commentService.deleteComment(vo);
		}
		
	}
	
	//게시글 신고
	@RequestMapping("reportBook.do")
	@ResponseBody
	public String reportBook(ReportcommunityVO vo, String ref_article_info, HttpSession session) {
		if(session.getAttribute("user") != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			vo.setRep_article_info(ref_article_info);
			vo.setRep_article_email(user.getUser_email());
			//System.out.println("communityService.reportBookCheck(vo)");
			if(communityService.reportBookCheck(vo) == null){
				communityService.reportBook(vo);
				return "0";
			} 
		}
		return "1";
	}
	
	//좋아요
	@RequestMapping("jjoa.do")
	@ResponseBody
	public String jjoa(CommunityVO vo, HttpSession session) {
		if(session.getAttribute("user") != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			vo.setUser_email(user.getUser_email());
			
			if(communityService.checkJjoa(vo) == null) {
				communityService.insertJjoa(vo);
				return "0";
			} else {
				communityService.deleteJjoa(vo);
				
			}
		}
		return "1";
	}
	
	@RequestMapping("checkJjoa.do")
	@ResponseBody
	public String checkJjoa(CommunityVO vo, HttpSession session) {
		if(session.getAttribute("user") != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			vo.setUser_email(user.getUser_email());
			
			if(communityService.checkJjoa(vo) == null) {
				
				return "0";
			}
		}
		return "1";
	}
}
