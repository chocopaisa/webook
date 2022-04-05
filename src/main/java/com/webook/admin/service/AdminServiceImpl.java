package com.webook.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminDAO;
import com.webook.domain.AdminVO;
import com.webook.domain.ChartVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAOImpl;
	
	public AdminVO loginCheck(AdminVO vo) {
		return adminDAOImpl.loginCheck(vo);
	}
	
	// 지난 주 일일 매출
	public List<ChartVO> LastWeekSales() {
		return adminDAOImpl.LastWeekSales();	
	}
	
	// 월별 회원가입 수
	public List<ChartVO> MonthMemCnt() {
		return adminDAOImpl.MonthMemCnt();
	}

}
