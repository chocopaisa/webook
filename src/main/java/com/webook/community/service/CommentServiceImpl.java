package com.webook.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.community.dao.CommentDAO;
import com.webook.community.dao.CommentDAOImpl;
import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;

@Service("commentService")
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAO commentDAO;
	
	// 댓글 페이지 리스트
	
	public List<CommentVO> getCommentList(CommentVO vo, int pNum) {
		return commentDAO.getCommentList(vo, pNum);
	}
	
	//댓글 작성
	public void insertComment(CommentVO vo) {
		commentDAO.insertComment(vo);
	}
	
	//댓글 삭제
	public void deleteComment(CommentVO vo) {
		commentDAO.deleteComment(vo);
	}


}
