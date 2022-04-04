package com.webook.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminDAO;
import com.webook.domain.AdminVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAOImpl;
	
	public AdminVO loginCheck(AdminVO vo) {
		return adminDAOImpl.loginCheck(vo);
	}
	
	public List<HashMap> TodaySales() {
		return adminDAOImpl.TodaySales();	}
}
