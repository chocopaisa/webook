package com.webook.mypage.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;
import com.webook.domain.MemberVO;

public interface MyReportDAO {
	
	// 작성 댓글 검색
	public List<HashMap> searchComment(MemberVO vo);
	// 작성 게시글 검색
	public List<CommunityVO> searchReport(MemberVO vo);
}
