package com.webook.admin.dao;

import java.util.List;

import com.webook.domain.ReportcommunityVO;

public interface AdminCommunityDAO {
	
	// 신고 게시글 목록 출력
	public List<ReportcommunityVO> getReportCommuList();
	
	
	// 신고 게시글 삭제 
	public void Deletecommu(ReportcommunityVO vo);
	
	
	// 오늘 게시글 수
	public int selectTodayBoard();

}
