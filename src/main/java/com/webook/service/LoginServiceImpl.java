package com.webook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webook.domain.MemberVO;
import com.webook.member.dao.LoginDAO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDAO loginDAO;
	
	public MemberVO idcheck(MemberVO vo) {
		return loginDAO.idcheck(vo);
	}

}
