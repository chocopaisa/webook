package com.webook.shop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webook.domain.ProductVO;



@Controller
@RequestMapping("/shop")
public class ProductController {

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/shop/" + step;
	} 
	
	@RequestMapping("shop.do")
	public void genre(ProductVO vo) {
		
	}
	
	
}
