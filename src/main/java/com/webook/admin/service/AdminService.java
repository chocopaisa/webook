package com.webook.admin.service;
import java.util.List;

import com.webook.domain.AdminVO;
import com.webook.domain.ChartVO;

public interface AdminService {
	
	public AdminVO loginCheck(AdminVO vo);
	
	// 지난 주 일일 매출
	public List<ChartVO> LastWeekSales();
	
	// 월별 회원가입 수
	public List<ChartVO> MonthMemCnt();

}
