package com.webook.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.admin.dao.AdminCommunityDAO;
import com.webook.domain.ReportcommunityVO;

@Service("adminCommService")
public class AdminCommServiceImpl implements AdminCommService {
	
	@Autowired
	private AdminCommunityDAO adminCommunityDAO;
	
	// 신고 게시글 목록 출력
	public List<ReportcommunityVO> getReportCommuList() {
		return adminCommunityDAO.getReportCommuList();
	}
	
	
	// 신고 게시글 삭제 
	public void deleteCommunity(Integer[] list) {
	 adminCommunityDAO.deleteCommunity(list); 
	 
	}
	 
	
	// 오늘 게시글 수
	public int selectTodayBoard() {
		return adminCommunityDAO.selectTodayBoard();
	}




	
}







