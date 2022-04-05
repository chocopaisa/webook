package com.webook.admin.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.AdminVO;
import com.webook.domain.ChartVO;


public interface AdminDAO {
	
	// 로그인 체크
	public AdminVO loginCheck(AdminVO vo);

	// 지난 주 일별 매출
	public List<ChartVO> LastWeekSales();
	
	// 월별 회원가입 수
	public List<ChartVO> MonthMemCnt();
}
