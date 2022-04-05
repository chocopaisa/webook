package com.webook.community.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommentVO;
import com.webook.domain.CommunityVO;

@Repository("commentDAO")
public class CommentDAOImpl implements CommentDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//댓글 목록 페이지 리스트
	public List<CommentVO> getCommentList(CommentVO vo, int pNum) {
		System.out.println("===> Mybatis getCommentList() 호출");
		RowBounds rowBounds = new RowBounds(((pNum-1)*5), 5);
		return mybatis.selectList("comment.mapper.getCommentList", vo, rowBounds);
	}
	
	//댓글 작성
	public void insertComment(CommentVO vo) {
		System.out.println("===> Mybatis insertComment() 호출");
		mybatis.insert("comment.mapper.insertComment", vo);
		
	}
	
	//댓글 삭제
	public void deleteComment(CommentVO vo) {
		System.out.println("===> Mybatis deleteComment() 호출");
		mybatis.delete("comment.mapper.deleteComment", vo);		
	}
}
