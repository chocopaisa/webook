package com.webook.community.dao;

import java.util.List;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;

public interface CommentDAO {
	
	//댓글 목록 페이지 리스트
	public List<CommentVO> getCommentList(CommentVO vo, int pNum);
	
	//댓글 작성
	public void insertComment(CommentVO vo);
	
}
