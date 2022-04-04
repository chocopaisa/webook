package com.webook.community.service;

import java.util.List;

import com.webook.domain.CommunityVO;

public interface CommunityService {
	//게시글 목록 페이지 리스트
	List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	//게시물 등록
	void insertBookreport(CommunityVO vo);
	
	//게시물 상세
	CommunityVO getBookreport(CommunityVO vo);
	

	
	/* CommunityVO getBookreportCount(CommunityVO vo, int pNum); */
	
}
