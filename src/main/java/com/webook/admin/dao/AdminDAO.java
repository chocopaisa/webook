package com.webook.admin.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.AdminVO;


public interface AdminDAO {
	
	// 로그인 체크
	public AdminVO loginCheck(AdminVO vo);

	// 일별 매출
	public List<HashMap> TodaySales();
}
