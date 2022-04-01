package com.webook.community.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommunityVO;

@Repository("communityDAO")
public class CommunityDAOImpl implements CommunityDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	//게시글 목록 페이지 리스트
	public List<CommunityVO> getBookreportList(CommunityVO vo, int pNum) {
		System.out.println("===> Mybatis getBookreportList() 호출");
		
		RowBounds rowBounds = new RowBounds(((pNum-1)*10) ,10);
		
		return mybatis.selectList("community.mapper.getBookreportList", vo, rowBounds);
		
		
	}
	
	//게시물 등록
	public void insertBookreport(CommunityVO vo) {
		System.out.println("===> Mybatis insertBookreport() 호출");
		mybatis.insert("community.mapper.insertBookreport", vo);
	}
	
	
	
	
	
	/*
	 * public CommunityVO getBookreportCount(CommunityVO vo, int pNum) { int
	 * bookreport_count = mybatis.selectOne("community.mapper.getBookreportCount",
	 * vo);
	 * 
	 * CommunityVO pnum_bean = new CommunityVO(bookreport_count, pNum, 10, 5);
	 * return pnum_bean; }
	 */
}
