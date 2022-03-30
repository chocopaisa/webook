package com.webook.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class Admincontroller {
	
	@RequestMapping("/{step}.do")
	public String dashboard(@PathVariable String step) {
		return "/admin/" + step;		
	}

}
