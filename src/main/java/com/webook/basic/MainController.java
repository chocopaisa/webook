package com.webook.basic;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@RequestMapping("/{step}")
	public void onlyGo() {
		
	}
}
