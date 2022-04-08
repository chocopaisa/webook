package com.webook.community.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.community.dao.CommunityDAO;
import com.webook.domain.CommunityVO;
import com.webook.domain.ReportcommunityVO;

@Service("communityService")
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	
	//게시글 목록 페이지 리스트
	public List<CommunityVO> getBookreportList(CommunityVO vo, int pNum) {
		return communityDAO.getBookreportList(vo, pNum);
	}
	
	//게시물 등록
	public void insertBookreport(CommunityVO vo) {
		communityDAO.insertBookreport(vo);
	}
	
	//게시물 상세
	public CommunityVO getBookreport(CommunityVO vo) {
		return communityDAO.getBookreport(vo);
	}
	
	//게시물 검색
	public List<CommunityVO> searchBookreportList(HashMap map, int pNum) {
		return communityDAO.searchBookreportList(map, pNum);
	}
	
	//게시글 삭제
	public void deleteBookreport(CommunityVO vo) {
		communityDAO.deleteBookreport(vo);
	}
	
	//조회수 증가
	public void viewCount(CommunityVO vo) {
		communityDAO.viewCount(vo);
	}
	
	//게시글 신고
	public void reportBook(ReportcommunityVO vo) {
		communityDAO.reportBook(vo);
	}
	
	//게시글 신고 체크
	public ReportcommunityVO reportBookCheck(ReportcommunityVO vo) {
		return communityDAO.reportBookCheck(vo);
	}
	
	//좋아요 등록
	public void insertJjoa(CommunityVO vo) {
		communityDAO.insertJjoa(vo);
	}
	//좋아요 취소
	public void deleteJjoa(CommunityVO vo) {
		communityDAO.deleteJjoa(vo);
	}
	//좋아요 중복 체크
	public CommunityVO checkJjoa(CommunityVO vo) {
		return communityDAO.checkJjoa(vo);
	}
	
	//좋아요 갯수
	public CommunityVO countJjoa(CommunityVO vo) {
		return communityDAO.countJjoa(vo);
	}

	
	// 베스트 게시글 목록 가져오기
	@Override
	public List<CommunityVO> searchBestReportList(int pNum) {
		
		return communityDAO.searchBestReportList(pNum);
	}
	
}
