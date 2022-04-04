package com.webook.mypage.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;
import com.webook.mypage.dao.MyReportDAO;

@Service("MyReportService")
public class MyReportServiceImpl implements MyReportService{

	@Autowired
	private MyReportDAO myReportDAO;
	
	// 내가 작성한 댓글
	@Override
	public List<HashMap> searchComment(MemberVO vo) {
		return myReportDAO.searchComment(vo);
		
	}

	// 내가 작성한 게시글
	@Override
	public List<CommunityVO> searchReport(MemberVO vo) {
		
		return myReportDAO.searchReport(vo);
	}

}
