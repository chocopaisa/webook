package com.webook.community.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommunityVO;
import com.webook.domain.ReportcommunityVO;

public interface CommunityDAO {
	//게시글 목록 페이지 리스트
	public List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	//게시글 등록
	public void insertBookreport(CommunityVO vo);
	
	//게시물 상세
	public CommunityVO getBookreport(CommunityVO vo);
	
	//게시물 검색
	public List<CommunityVO> searchBookreportList(HashMap map, int pNum);
	
	//게시글 삭게
	public void deleteBookreport(CommunityVO vo);
	
	//조회수 증가
	public void viewCount(CommunityVO vo);
	
	//게시글 신고
	public void reportBook(ReportcommunityVO vo);
	
	//게시글 신고 체크
	public ReportcommunityVO reportBookCheck(ReportcommunityVO vo);
	
	//좋아요 등록
	public void insertJjoa(CommunityVO vo);
	
	//좋아요 취소
	public void deleteJjoa(CommunityVO vo);
	
	//좋아요 중복 체크
	public CommunityVO checkJjoa(CommunityVO vo);
	
	//좋아요 count
	public CommunityVO countJjoa(CommunityVO vo);	

	public List<CommunityVO> searchBestReportList(int pNum);
	
}
