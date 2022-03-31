package com.webook.community.service;

import java.util.List;

import com.webook.domain.CommunityVO;

public interface CommunityService {
	
	List<CommunityVO> getBookreportList(CommunityVO vo, int pNum);
	
	/* CommunityVO getBookreportCount(CommunityVO vo, int pNum); */
	
}
