package com.webook.member.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
	
	public List<MemberVO> getMemberList(HashMap map);
	

}
