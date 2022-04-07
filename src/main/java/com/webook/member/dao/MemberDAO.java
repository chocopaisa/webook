package com.webook.member.dao;

import java.util.HashMap;
import java.util.List;

import com.webook.domain.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	
	public void updateMember(HashMap map);
	
	public int deleteMember(MemberVO vo);
	
	public List<MemberVO> getMemberList(HashMap map);

	public MemberVO passwordfind(MemberVO vo);

}
