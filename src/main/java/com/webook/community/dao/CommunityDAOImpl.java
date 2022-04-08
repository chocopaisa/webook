package com.webook.community.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.domain.CommunityVO;
import com.webook.domain.ReportcommunityVO;

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
	
	//게시글 목록 페이지 총 갯수
	public int totalPageCount(CommunityVO vo) {
		System.out.println("===> Mybatis totalPageCount() 호출");
		return mybatis.selectOne("community.mapper.totalPageCount", vo);
	}
	
	//게시물 등록
	public void insertBookreport(CommunityVO vo) {
		System.out.println("===> Mybatis insertBookreport() 호출");
		mybatis.insert("community.mapper.insertBookreport", vo);
	}
	
	// 게시물 상세
	public CommunityVO getBookreport(CommunityVO vo) {
		System.out.println("===> Mybatis getBookreport() 호출");
		return (CommunityVO) mybatis.selectOne("community.mapper.getBookreport", vo);
	}
	
	//게시글 검색
	public List<CommunityVO> searchBookreportList(HashMap map, int pNum) {
		System.out.println("===> Mybatis searchBookreportList() 호출");
		
		RowBounds rowBounds = new RowBounds(((pNum-1)*10) ,10);
		
		return mybatis.selectList("community.mapper.searchBookreportList", map, rowBounds);
	}	
	
	//게시글 삭제
	public void deleteBookreport(CommunityVO vo) {
		System.out.println("===> Mybatis deleteBookreport() 호출");
		mybatis.insert("community.mapper.deleteBookreport", vo);
	}
	
	//조회수 증가
	public void viewCount(CommunityVO vo) {
		System.out.println("===> Mybatis viewCount() 호출");
		mybatis.update("community.mapper.viewCount", vo);
	}
	
	//게시글 신고
	public void reportBook(ReportcommunityVO vo) {
		System.out.println("===> Mybatis reportBook() 호출");
		mybatis.insert("community.mapper.reportBook", vo);
	}
	
	//게시글 신고 중복체크
	public ReportcommunityVO reportBookCheck(ReportcommunityVO vo) {
		System.out.println("===> Mybatis reportBook() 호출");
		return mybatis.selectOne("community.mapper.reportBookCheck", vo);
	}
	
	//좋아요 등록
	public void insertJjoa(CommunityVO vo) {
		System.out.println("===> Mybatis insertJjoa() 호출");
		mybatis.insert("community.mapper.insertJjoa", vo);
	}
	
	//좋아요 취소
	public void deleteJjoa(CommunityVO vo) {
		System.out.println("===> Mybatis deleteJjoa() 호출");
		mybatis.delete("community.mapper.deleteJjoa", vo);
	}
	
	//좋아요 중복 체크
	public CommunityVO checkJjoa(CommunityVO vo) {
		System.out.println("===> Mybatis checkJjoa() 호출");
		return mybatis.selectOne("community.mapper.checkJjoa", vo);
	}
	
	//좋아요 count
	public CommunityVO countJjoa(CommunityVO vo) {
		System.out.println("===> Mybatis countJjoa() 호출");
		return mybatis.selectOne("community.mapper.countJjoa", vo);
	}

	// 베스트 게시글 목록
	@Override
	public List<CommunityVO> searchBestReportList(int pNum) {
		System.out.println("===> Mybatis searchBestReportList() 호출");
		RowBounds row = new RowBounds(((pNum-1)*10) ,10);
		return mybatis.selectList("community.mapper.searchBestReport", null, row);
	}	

}
