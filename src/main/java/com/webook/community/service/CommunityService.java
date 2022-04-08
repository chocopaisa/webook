package com.webook.community.service;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommunityVO;
import com.webook.domain.ReportcommunityVO;

public interface CommunityService {
	//게시글 목록 페이지 리스트
	List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	//게시글 목록 페이지 총 갯수
	int totalPageCount(CommunityVO vo);
	
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
	
	//게시글 신고
	void reportBook(ReportcommunityVO vo);
	
	//게시글 신고 체크
	ReportcommunityVO reportBookCheck(ReportcommunityVO vo);
	
	//좋아요 등록
	void insertJjoa(CommunityVO vo);
	
	//좋아요 취소
	void deleteJjoa(CommunityVO vo);
	
	//좋아요 중복체크
	CommunityVO checkJjoa(CommunityVO vo);
	
	//좋아요 count
	CommunityVO countJjoa(CommunityVO vo);	
	
	// 베스트 게시판 글
	List<CommunityVO> searchBestReportList(int pNum);
}
