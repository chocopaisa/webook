package com.webook.community.controller;

import java.util.List;

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
	public void writeBoard() {
		
	}
}
