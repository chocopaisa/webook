package com.webook.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.community.dao.CommunityDAO;
import com.webook.community.dao.CommunityDAOImpl;
import com.webook.domain.CommunityVO;

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
	
/*	public CommunityVO getBookreportCount(CommunityVO vo, int pNum) {
		return communityDAO.getBookreportCount(vo, pNum);
	}*/
	
}
