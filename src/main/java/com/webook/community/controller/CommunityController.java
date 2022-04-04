package com.webook.community.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.community.service.CommentService;
import com.webook.community.service.CommunityService;
import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;

@Controller
@RequestMapping("/community")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	@Autowired
	private CommentService commentService;
	// step에 지정한 것들 외에 것이 들어가면 그대로 적용해서 보냄
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/community/"+step;
	}
	// 게시글 목록 검색
	@RequestMapping("/list.do")
	public void getBookreportList(CommunityVO vo, Model model, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		
		model.addAttribute("bookreportList", communityService.getBookreportList(vo, pNum));
		
		/*
		 * model.addAttribute("bookreportCount", communityService.getBookreportCount(vo,
		 * pNum));
		 */
	}
	// 게시글 등록
	@RequestMapping("/insert.do")
	public String insertBookreport(CommunityVO vo) throws IOException {
		//System.out.print(vo.getBookreport_content());
		communityService.insertBookreport(vo);
		return "redirect:list.do";
		
	}
	
	// 게시글 상세 / 댓글
	@RequestMapping("/getcontent.do")
	public void getBookreport(CommunityVO vo, Model m, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		CommunityVO result = communityService.getBookreport(vo);
		CommentVO re = new CommentVO();
		re.setBookreport_no(vo.getBookreport_no());
		m.addAttribute("bookreport", result);
		m.addAttribute("commentList", commentService.getCommentList(re, pNum));
		
	}
	
	//댓글 목록
	@RequestMapping("/getCommentList.do")
	@ResponseBody
	public List<CommentVO> getCommentList(CommunityVO vo, @RequestParam(value="pNum", defaultValue = "1")int pNum) {
		CommunityVO result = communityService.getBookreport(vo);
		CommentVO re = new CommentVO();
		re.setBookreport_no(vo.getBookreport_no());
		return commentService.getCommentList(re, pNum);
	}
	
	// 댓글 작성
	@RequestMapping(value="/insertComment.do" )
	@ResponseBody
	public void insertComment(CommentVO vo) throws IOException {
		System.out.print(vo.getComment_content());
		commentService.insertComment(vo);
	}
	
	
}
