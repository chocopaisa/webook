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
	
	@RequestMapping("/index")
	public String test1() {
		HashMap map = mybatis.selectOne("mapper.searchUser");
		
		System.out.println(map.get("ADMIN_ID"));
		return "index";
	}
}
