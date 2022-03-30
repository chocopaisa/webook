package com.webook.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.community.dao.CommunityDAO;
import com.webook.community.dao.CommunityDAOImpl;
import com.webook.domain.CommunityVO;

@Service("communityService")
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	
	
	public List<CommunityVO> getBookreportList(CommunityVO vo) {
		return communityDAO.getBookreportList(vo);
	}
	
	
	
}
