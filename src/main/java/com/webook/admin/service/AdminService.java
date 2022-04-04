package com.webook.admin.service;
import java.util.HashMap;
import java.util.List;

import com.webook.domain.AdminVO;

public interface AdminService {
	
	public AdminVO loginCheck(AdminVO vo);
	
	public List<HashMap> TodaySales();

}
