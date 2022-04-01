package com.webook.community.dao;

import java.util.List;

import com.webook.domain.CommunityVO;

public interface CommunityDAO {
	//게시글 목록 페이지 리스트
	public List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	//게시글 등록
	public void insertBookreport(CommunityVO vo);
	
	//게시물 상세
	public CommunityVO getBookreport(CommunityVO vo);
	
	/* public CommunityVO getBookreportCount(CommunityVO vo, int pNum); */
	
}
