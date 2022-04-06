package com.webook.admin.service;

import java.util.List;

import com.webook.admin.dao.AdminCommunityDAO;
import com.webook.domain.ReportcommunityVO;

public interface AdminCommService {
	

	// 신고 게시글 조회
	public List<ReportcommunityVO> getReportCommuList();
	
	
	// 신고 게시글 삭제 
	public void deleteCommunity();
	 

	int selectTodayBoard();
		
}
