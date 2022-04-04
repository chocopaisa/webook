package com.webook.community.service;

import java.util.List;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;

public interface CommentService {
	
	// 댓글 목록 페이지 리스트
	List<CommentVO> getCommentList(CommentVO vo, int pNum);
	
	//댓글 작성
	void insertComment(CommentVO vo);
}
