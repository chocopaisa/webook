package com.webook.community.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommunityVO;

public interface CommunityService {
	//게시글 목록 페이지 리스트
	List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	//게시물 등록
	void insertBookreport(CommunityVO vo);
	
	//게시물 상세
	CommunityVO getBookreport(CommunityVO vo);
	
	//게시물 검색
	List<CommunityVO> searchBookreportList(HashMap map, int pNum);

	//게시글 삭제
	void deleteBookreport(CommunityVO vo);
	
	//조회수증가
	void viewCount(CommunityVO vo);
	
	
	/* CommunityVO getBookreportCount(CommunityVO vo, int pNum); */
	
}
