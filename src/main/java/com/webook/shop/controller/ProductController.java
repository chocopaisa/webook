package com.webook.shop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductVO;
import com.webook.shop.sevice.ProductService;


@Controller
@RequestMapping("/shop")
public class ProductController {
	
	private ProductService service;

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/shop/" + step;
	} 
	
	@RequestMapping("shop_korean.do")
	public void genre(ProductVO vo, int pnum, Model m) {
		/* m.addAttribute("productList",service.productList(vo, pnum)); */
		
	}
	
	
}
