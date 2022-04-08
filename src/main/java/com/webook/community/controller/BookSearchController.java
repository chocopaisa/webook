package com.webook.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webook.domain.ProductVO;
import com.webook.shop.sevice.ProductService;

@Controller
@RequestMapping("/community")
public class BookSearchController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("searchBookAtWrite.do")
	@ResponseBody
	public List<ProductVO> searchBook(ProductVO vo) {
		
		return productService.genreKo(vo, "1");
	}
	
	@RequestMapping("write.do")
	public String writeBoard(HttpSession session, HttpServletRequest request) {
		if(session.getAttribute("user") == null) {
			return "redirect:../login.do";
		}
		
		return "community/write";
	}
}
