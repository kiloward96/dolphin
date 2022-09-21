package com.gurugan.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception; 
	
	public int insert(MemberAddress dto) throws Exception;
	
	public int update(Member dto) throws Exception;
}
