package com.webook.community.dao;

import java.util.List;

import com.webook.domain.CommunityVO;

public interface CommunityDAO {
	
	public List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	/* public CommunityVO getBookreportCount(CommunityVO vo, int pNum); */
	
}
